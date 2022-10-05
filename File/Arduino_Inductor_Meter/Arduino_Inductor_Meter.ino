#include "Button.h"
#include "Timer.h"
#include <printf.h>
#include <math.h>

#define SPI_LCD


#define Rele_Cal 4
#define Rele_GND 5
#define LM311_input 2
#define delayTime 120
#define campioniFreq 4
#define prescaler 16

double C;
double L;
double Freq1 = 0;
double Freq2 = 0;

uint8_t state = 0;
boolean updateDisplay = true;
boolean Detected;

String CapacitanzeMode = "Capacitanze:\0";
String InductorMode = "Induttanze:\0";
String freq = "\2x =/ \0";
String NotFound = "Don't detected\0";
String Lsymbol = "Lx = \0";
String Csymbol = "Cx = \0";

volatile boolean complete;
volatile unsigned long startTime;
volatile unsigned long endTime;
volatile unsigned long pulse;


void SetCalibrateMode();
void AddCapacitor();
void SetMisurationMode();
double Calculate_LM311_Freq();
double calculate_L();
double calculate_C();
double calculate_f1();
double calculate_f2();
String formattaUnita(double value, char unit);

Timer UpdateDisplayValue(400);



void SetCalibrateMode() {
  digitalWrite(Rele_GND, HIGH);
  digitalWrite(Rele_Cal, LOW);
  delay(1000);
}

void AddCapacitor() {
  digitalWrite(Rele_Cal, HIGH);
  delay(1000);
}

void SetMisurationMode()
{
  digitalWrite(Rele_Cal, LOW);
  delay(10);
  digitalWrite(Rele_GND, LOW);
  delay(1000);
}

double Calculate_LM311_Freq()
{
  complete = false;
  pulse = 0;
  DDRD &= 0b11111011; //D2 input

  while(PORTD & 0b00000100 == 0b00000000); //aspetto finchè il segnale salga, nell'evntualità
  while(PORTD & 0b00000100 == 0b00000100); //aspetto che vada Basso per iniziale il conteggio
  
  startTime = micros();
  EIMSK |= 0x01; //enable INT0
  
  

  while(!complete) {
    if(micros()- startTime >= 1000000) {
       EIMSK &= 11111110; //disable INT0
       complete = true;
    }
  }

  return pulse * prescaler;
  
  
  
  /*double value = 0;
  double period;
  
  for(uint8_t i = 0; i < campioniFreq; i++) {
    double v = pulseIn(LM311_input, HIGH)*2; //ritorn in microsecondi 10^-6 = 1.000.000
    if(v >= 1100000) return 1;

    value += v;
  }

  period = (value/campioniFreq) / 1000000.0;

  //il valore del periodo e' in uS e non in s => 1.000.000 più grande
  return 1/period; // (1 * 1.000.000) / periodo*/
}

double Get_Frequenze1() {
  SetCalibrateMode();
  return Calculate_LM311_Freq();
}

double Get_Frequenze2() {
  SetCalibrateMode();
  AddCapacitor();
  return Calculate_LM311_Freq();
}



double calculate_L() 
{
  double TWO_PI_exp2 = pow(PI, 2) * 4;
  double F1exp2      = pow(Freq1, 2);
  double denominat   = TWO_PI_exp2 * F1exp2 * C;
  
  return 1/denominat;
}

double calculate_C() 
{
  double F1exp2 = pow(Freq1, 2);
  double F2exp2 = pow(Freq2, 2);
  double numerat    = F2exp2;
  double denominat  = F1exp2 - F2exp2;
  
  return (numerat/denominat) * (1 * pow(10, -9));
}

uint8_t calculateFrequenzeRange(double input)
{
  /*
    // 0 => 0   HZ   -> 9999 HZ
    // 1 => 10  KHZ  -> 999  KHZ
    // 2 => > 1 MHZ
   */
  
  //cerco il range di frequenza
  if(input <  10000)   return 0;
  if(input >= 10000 )  return 1; 
  if(input >= 1000000) return 2;

  return 0;
}

String formattaUnita(double value, char unit)
{                               //'µ'
  static char range[] = {'\0','m','\4','n','p','\0','K','M'};   
  char valBuff[8];
  char buff[28];
  String str = "";


  if(value == 0 && unit != 'Z'){
    str += "0.00 [u";
    str += unit;
    str += ']';
    return str;
  }
  else if(value == 0 && unit == 'Z') {
    str = "0.00 [HZ]";
    return str;
  }
      
  if(unit != 'Z') {
    for(uint8_t i = 0; i < 5; i++) {
      if(value >= 1*pow(10, -(3*i)) )
      {
        dtostrf(value*pow(10, 3*i), 6, 2, valBuff);
        
        for(uint8_t j = 0; j < 5; j++)
          str += valBuff[j];
  
        str += " [";
        str += range[i];
        str += unit; 
        str += "]";  
          
        return str;
      }
    }
  }
  else if(unit == 'Z')
  {
    uint8_t r = calculateFrequenzeRange(value);
    
    value = value / (1*pow(10, 3*r)); // => r=0 -> 1250 / 1*10^0, r=1 -> 12000 / 1*10^3(1000), r=2 -> 1250k / 1*10^3(1M)  
    dtostrf(value, 6, 2, valBuff);
      
    for(uint8_t j = 0; j < 5; j++)
      str += valBuff[j];
  
    str += " [";
    if(r>0) str += range[r + 5];
    str += "HZ]";  
        
    return str;
  }
  return "0.00 ?";
}

ISR( INT0_vect ) {
 pulse++;
}

void setup() 
{
  /* ====================[ I/O ] ==================== */
  // set Relay RefCap pin as Output
  // set Relay Gnd/Cx pin as Output
  // set LM311 pin as Input
  
  DDRD = 0x00 | (1 << PD4) | (1 << PD6) | (1 << PD7); 
  //pinMode(LM311_input, INPUT);

  sei(); //enable interrupt
  /* ====================[ Interrupt(0) ] ==================== */

  EICRA |= 0b00000010;  //The falling edge of INT0 generates an interrupt request -> ISC01 e ISC00
  EIMSK &= 0xFD;        //disable INT0 e INT1 

  /* ====================[ Serial ] ==================== */
  Serial.begin(115200);
  printf_begin();

  /* ====================[ SPI_LCD ] ==================== */
  #ifdef SPI_LCD

    char buffer1[4][20]= {
      {"********************"},
      {"*    LC and ESR    *"},
      {"*      Meter       *"},
      {"********************"}
    };
    
    Display_LowSpeed_SPI_init();
    Disable_Scroll();
    delay(500);
    SPI_write_buffer(&buffer1, sizeof(buffer1));
    delay(4000);
    ClearDisplay();
    
  #endif

  /* ====================[ Calibration ] ==================== */

 

  #ifdef SPI_LCD
    char buffer2[] = {"Calibrating..."};
    char buffer3[4][6] = {{"F1:   "},{"\n\rF2: "},{"\n\rC1: "},{"\n\rL1: "}};
    
    SPI_write_buffer(&buffer2, sizeof(buffer2));
    delay(2000);
    ClearDisplay();
  #endif

  for(uint8_t i = 0; i < 4; i++) 
  {
    String str;
    
    switch(i){
      case 0: 
        Freq1 = Get_Frequenze1(); 
        str = formattaUnita(Freq1,'Z');
        break;
        
      case 1: 
        Freq2 = Get_Frequenze2(); 
        str = formattaUnita(Freq2,'Z');
        break;
        
      case 2: 
        C = calculate_C();
        str = formattaUnita(C, 'F');
        break;

      case 3: 
        L = calculate_L();
        str = formattaUnita(L, 'H');
        break;
    }

   for(uint8_t j = 0; j < sizeof(buffer3[i]); j++)
     Serial.print(buffer3[i][j]);
   Serial.println(str);

   #ifdef SPI_LCD
    SPI_write_buffer(&buffer3[i], sizeof(buffer3[i]));
    Set_Cursor_Position(5,i);
    SPI_write_String(str);
   #endif
  }

  SetMisurationMode();
  delay(5000);
  ClearDisplay();
}

void loop() 
{
  if(updateDisplay) 
  {
      
  }
  delay(750);

  if(UpdateDisplayValue.Test() || true)
  {
    if(state == 0) 
    {
      double Freq3 = Calculate_LM311_Freq();
      
      if(Freq3 > 32) 
      {
        uint8_t range = 1;

        double Freq3_ = Freq3 / pow(10, 3 * range);
        double Freq1_ = Freq1 / pow(10, 3 * range);
        double t1 = Freq1_ * Freq1_;
        double t2 = Freq3_ * Freq3_;
        double t3 = (t1/t2);
        double Lx = (t3 - 1)* L;

        if(Lx == -3.4028235E+38) {
          Lx = 0;
        }

        ClearDisplay();
        SPI_write_String(InductorMode);
        Set_Cursor_Position(0,1);
        SPI_write_String(freq);
        SPI_write_String(formattaUnita(Freq3,'Z'));
        Set_Cursor_Position(0,2);
        SPI_write_String(Lsymbol);
        SPI_write_String(formattaUnita(Lx,'H'));

        Serial.print("Lx: ");
        Serial.println(Lx);
      }
      else {
        ClearDisplay();
        SPI_write_String(InductorMode);
        Set_Cursor_Position(0,2);
        SPI_write_String(NotFound);
        Serial.println("don't detected");
      }
    }
    else if(state == 1) {
      
    }  
  }

  
  /*
   * String NotFound = "Don't detected\0";
String Lsymbol = "Lx = \0";
String Csymbol = "Cx = \0";

   */
  
  /*delay(500);
  
  unsigned long Freq3 = Calculate_LM311_Freq();
  double Lx = (( pow(Freq1, 2) / pow(Freq3, 2) ) - 1 ) * L;

  Serial.print("Lx: ");
  Serial.println(Lx * pow(10, 6));

  */
 
}
