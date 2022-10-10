#include "CrystalFontzDisplay.h"
#include "arduino.h"

Display::Display() {
  //PB5 -> SCK
  //PB3 -> MOSI
  //PB2 -> CS

  //imposto i 3 pin come output e con valore HIGH
  DDRB  |= (1 << PB2) | (1 << PB3) | (1 << PB5);
  PORTB |= (1 << PB2) | (1 << PB3) | (1 << PB5);
  
}

void Display::init(void) 
{
  Display::Clear();
  Display::HideCursor();
  Display::DisableScroll();
}

void Display::SPI_EnableTransmission() {
  PORTB &= ~(1 << PB2); // => !0b00000100; -> 0b11111011;
  delayMicroseconds(20);
}

void Display::SPI_DisableTransmission() {
  PORTB |= (1 << PB2);
  delayMicroseconds(70);
}

void Display::SPI_transfer_byte(uint8_t byte_out)
{
  for (uint8_t bit = 0x80; bit; bit >>= 1) 
  {
    /* Shift-out a bit to the MOSI line */
    PORTB = (byte_out & bit) ? (PORTB | (1 << PB3)) : (PORTB & ~(1 << PB3));
    delayMicroseconds(30);

    /* Pull the clock line high */
    PORTB &= ~(1 << PB5);
    delayMicroseconds(30);
    PORTB |= (1 << PB5);
    delayMicroseconds(30);
  }
}

void Display::SPI_write_byte(uint8_t byte_out) 
{
  SPI_EnableTransmission();
  SPI_transfer_byte(byte_out);
  SPI_DisableTransmission();
}

void Display::SPI_write_bytes(uint8_t *buffer, uint8_t NByte)
{
  SPI_EnableTransmission();
  
  for(uint8_t i = 0; i < NByte; i++) {
     SPI_transfer_byte(*buffer);
     buffer++;
  }
  SPI_DisableTransmission();
}



void Display::WriteBuffer(void *buffer, uint8_t Byte, boolean translate)
{
  for(uint8_t i = 0; i < Byte; i++) {
     SPI_EnableTransmission();
     SPI_transfer_byte(translate ? Display::translateChar(*(uint8_t*)buffer) : *(uint8_t*)buffer);
     SPI_DisableTransmission();
     buffer++;
  }
}

void Display::WriteString(String str, boolean translate)
{
  for(uint8_t i = 0; i < str.length() || i < 40; i++){
    char ch = str.charAt(i);
    
    SPI_EnableTransmission();
    SPI_transfer_byte(translate ? Display::translateChar((uint8_t) ch) : (uint8_t) ch);
    SPI_DisableTransmission();
  }
}

uint8_t Display::translateChar(uint8_t ch) 
{
  switch(ch){
      case '[': return 0xFA;
      case ']': return 0xFC;
      case '{': return 0xFD;
      case '}': return 0xFF;
      case '\0': return '\0';
      case '\1': return INFIN;
      case '\2': return FREQ;
      case '\3': return OMEGA;
      case '\4': return MIU;
      case '\5': return MINPL;
      case '\6': return 0xFD;
      case '\7': return 0xFD;
      default: return ch;
  }
}

void Display::SetCursorPosition(uint8_t x, uint8_t y)
{
  if(x >= 20) x = 19;
  if(y >= 4)  y = 3;

  uint8_t buffer[] = {17, x, y};
  SPI_write_bytes(&buffer[0], sizeof(buffer));
}


void Display::Change_Backlight(uint8_t value)
{
  if(value > 100)value = 100;
  uint8_t buffer[] = {14, value};
  SPI_write_bytes(&buffer[0], sizeof(buffer));
}

void Display::Clear()               { SPI_write_byte(0x0C); }
void Display::Delete_in_Place()     { SPI_write_byte(0x0B); }
void Display::CelarLine()           { SPI_write_byte(0x0A); }
void Display::NewLine()             { SPI_write_byte(0x0D); }
void Display::GoHome()              { SPI_write_byte(0x01); }
void Display::HideCursor()          { SPI_write_byte(0x04); }
void Display::SetUnderlineCursor()  { SPI_write_byte(0x05); }
void Display::SetBlockCursor()      { SPI_write_byte(0x06); }
void Display::Backspace()           { SPI_write_byte(0x08); }
void Display::EnableScroll()        { SPI_write_byte(19);   }
void Display::DisableScroll()       { SPI_write_byte(20);   }
