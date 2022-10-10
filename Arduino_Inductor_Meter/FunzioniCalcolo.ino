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
  delay(2000);
  return Calculate_LM311_Freq();
}

double Get_Frequenze2() {
  SetCalibrateMode();
  AddCapacitor();
  delay(1000);
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
