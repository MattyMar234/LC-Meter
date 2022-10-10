#include "CrystalFontzDisplay.h"
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
#define Lmode_button 6
#define Cmode_button 7

double C;
double L;
double Freq1 = 0;
double Freq2 = 0;

uint8_t state = 0;
boolean updateDisplay = true;
boolean Detected;

String CapacitanzeMode = "Capacitanze:\0";
String InductorMode    = "Induttanze:\0";
String freq            = "\2x =/ \0";
String NotFound        = "   Don't detected\0";
String Lsymbol         = "Lx = \0";
String Csymbol         = "Cx = \0";

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
Display DisplayLCD;
Button ButtonL_mode(Lmode_button, 1, 200);
Button ButtonC_mode(Cmode_button, 1, 200);



void SetCalibrateMode() {
  digitalWrite(Rele_GND, HIGH);
  digitalWrite(Rele_Cal, LOW);
  delay(100);
}

void AddCapacitor() {
  digitalWrite(Rele_Cal, HIGH);
  delay(100);
}

void SetCapacitanzeMode() {
  SetCalibrateMode();
}

void SetInduttanzeMode()
{
  digitalWrite(Rele_Cal, LOW);
  digitalWrite(Rele_GND, LOW);
  delay(100);
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

    char buffer2[] = {"Calibrating..."};
    char buffer3[4][6] = {{"F1:   "},{"\n\rF2: "},{"\n\rC1: "},{"\n\rL1: "}};

    
    
    DisplayLCD.init();
    delay(500);
    DisplayLCD.WriteBuffer(&buffer1, sizeof(buffer1),false);
    delay(4000);
    ClearDisplay();
    
  #endif

  /* ====================[ Calibration ] ==================== */

 

  #ifdef SPI_LCD
    DisplayLCD.WriteBuffer(&buffer2, sizeof(buffer2),false);
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
    DisplayLCD.WriteBuffer(&buffer3[i], sizeof(buffer3[i]),false);
    DisplayLCD.SetCursorPosition(5,i);
    DisplayLCD.WriteString(str,true);
   #endif
  }

  SetInduttanzeMode();
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
      DisplayLCD.Clear();
      DisplayLCD.WriteString(InductorMode,true);
      
      if(Freq3 > 32) 
      {
        uint8_t range = 1;

        double Freq3_ = Freq3 / pow(10, 3 * range);
        double Freq1_ = Freq1 / pow(10, 3 * range);
        double t1 = Freq1_ * Freq1_;
        double t2 = Freq3_ * Freq3_;
        double t3 = (t1/t2);
        double Lx = (t3 - 1)* L;

        if(Lx == -3.4028235E+38)
          Lx = 0;

        DisplayLCD.SetCursorPosition(0,1);
        DisplayLCD.WriteString(freq,true);
        DisplayLCD.WriteString(formattaUnita(Freq3,'Z'),true);
        DisplayLCD.SetCursorPosition(0,2);
        DisplayLCD.WriteString(Lsymbol,true);
        DisplayLCD.WriteString(formattaUnita(Lx,'H'),true);

        Serial.print("Lx: ");
        Serial.println(Lx);
      }
      else {
        DisplayLCD.SetCursorPosition(0,2);
        DisplayLCD.WriteString(NotFound, true);
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
