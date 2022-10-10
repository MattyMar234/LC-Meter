

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
