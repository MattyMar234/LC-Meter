
#ifdef SPI_LCD
#define MOSI 11

//mappa
#define romb1 0b11001111
#define R_ROW 0b11011111
#define U_ROW (13 << 4) | 15
#define L_ROW (14 << 4) | 1
#define D_ROW (14 << 4) | 0
#define POW_0 (8 << 4) | 0
#define POW_1 (8 << 4) | 1  //'¹'
#define POW_2 (8 << 4) | 2  //'²'
#define POW_3 (8 << 4) | 3  //'³'
#define POW_4 (8 << 4) | 4
#define POW_5 (8 << 4) | 5
#define POW_6 (8 << 4) | 6
#define POW_7 (8 << 4) | 7
#define POW_8 (8 << 4) | 8
#define POW_9 (8 << 4) | 9
#define PLUEQ (8 << 4) | 13
#define MINEQ (8 << 4) | 14

#define croma (9 << 4) | 0
#define scrom (9 << 4) | 1
#define bel   (9 << 4) | 2
#define heart (9 << 4) | 3
#define romb2 (9 << 4) | 4
#define pilar (9 << 4) | 5
#define L_UPL (9 << 4) | 6
#define L_DOR (9 << 4) | 7
#define ALPHA (9 << 4) | 12
#define EPSIL (9 << 4) | 13
#define Delta (9 << 4) | 14
#define INFIN (9 << 4) | 15
#define CSI   (11 << 4) | 10
#define THETA (11 << 4) | 9
#define SIGMA (11 << 4) | 8
#define PSI   (11 << 4) | 7
#define OMEGA (11 << 4) | 5
#define Labda (11 << 4) | 4
#define THAU  (11 << 4) | 3
#define PHI   (11 << 4) | 2
#define DELTA (11 << 4) | 0
#define GAMMA (12 << 4) | 0
#define LABDA (12 << 4) | 1
#define pi    (12 << 4) | 1
#define Pi    (12 << 4) | 2
#define MIU   128 + 15
#define FREQ  208 + 5
#define MINPL (7 << 4) | 12

#define POINT (11 << 4) | 11
#define Q0 (2 << 4) | 15
#define Q1 (13 << 4) | 0
#define Q2 (13 << 4) | 1
#define Q3 (13 << 4) | 2
#define Q4 (13 << 4) | 3
#define Q5 (13 << 4) | 4
#define Q6 (13 << 4) | 6
#define Q7 (13 << 4) | 7
#define Q8 (13 << 4) | 8
#define Q9 (13 << 4) | 9
#define Q10 (13 << 4) | 10



inline void SPI_EnableTransmission()  __attribute__((always_inline));
inline void SPI_DisableTransmission() __attribute__((always_inline));
inline void SPI_transfer_byte()       __attribute__((always_inline));
inline uint8_t translateChar(uint8_t ch)__attribute__((always_inline));


const uint8_t PROGMEM DisplayCharMap[16][16] = 
{ 
  {0x00,0x10  ,' ','0','@','P','¿','p'  ,POW_0,croma,'@'  ,DELTA,GAMMA,Q1   ,D_ROW,'?'},
  {0x01,0x11  ,'!','1','A','Q','a','q'  ,POW_1,scrom,'£'  ,'?'  ,LABDA,Q2   ,L_ROW,'?'},
  {0x02,0x12  ,'"','2','B','R','b','r'  ,POW_2,bel  ,'¢'  ,PHI  ,Pi   ,Q3   ,'Â'  ,'?'},
  {0x03,0x13  ,'#','3','C','S','c','s'  ,POW_3,heart,'¥'  ,THAU ,'?'  ,Q4   ,'Í'  ,'?'},
  {0x04,'«'   ,'¤','4','D','T','d','t'  ,POW_4,romb2,'è'  ,Labda,'_'  ,Q5   ,'Ó'  ,'?'},
  {0x05,'»'   ,'%','5','E','U','e','u'  ,POW_5,pilar,'é'  ,OMEGA,'È'  ,FREQ ,'Ú'  ,'õ'},
  {0x06,0x16  ,'&','6','F','V','f','v'  ,POW_6,L_UPL,'ù'  ,pi   ,'Ê'  ,Q6   ,'ý'  ,'?'},
  {0x07,0x17  ,'\'','7','G','W','g','w' ,POW_7,L_DOR,'í'  ,PSI  ,'ê'  ,Q7   ,'á'  ,'÷'},
  {0x08,0x18  ,'(','8','H','X','h','x'  ,POW_8,'\"' ,'ò'  ,SIGMA,'ç'  ,Q8   ,'í'  ,'?'},
  {0x09,0x19  ,')','9','I','Y','i','y'  ,POW_9,'\"' ,'Ç'  ,THETA,'?'  ,Q9   ,'ó'  ,'?'},
  {0x0A,0x1A  ,'*',':','J','Z','j','z'  ,'½'  ,'('  ,'ª'  ,CSI  ,'?'  ,Q10  ,'û'  ,'['},
  {0x0B,0x1B  ,'+',';','K','Ä','k','ä'  ,'¼'  ,')'  ,'Ø'  ,POINT,'?'  ,'?'  ,'ý'  ,'\\'},
  {0x0C,'.'   ,',','<','L','Ö','l','ö'  ,'±'  ,ALPHA,'ø'  ,'Æ'  ,'?'  ,'°'  ,'Ô'  ,']'},
  {0x0D,'^'   ,'-','=','M','Ñ','m','ñ'  ,PLUEQ,EPSIL,'?'  ,'æ'  ,'?'  ,'.'  ,'ô'  ,'{'},
  {0x0E,0x1E  ,'.','>','N','Ü','n','ü'  ,MINEQ,Delta,'Å'  ,'ß'  ,'~'  ,U_ROW,'?'  ,'¦'},
  {0x0F,Q0    ,'/','?','O','§','o','à'  ,MIU  ,INFIN,'å'  ,'É'  ,romb1,R_ROW,'?'  ,'}'}
  //Ï  ï ÿ ý ¡ ¾ þ      Ã  °  Ë Î Í Ì
};

const uint8_t PROGMEM ConversionMap[16][16] = 
{//0   16  32   48   64   80   96   112  128 144 160 176 192  13  14  15 
  {0,  16, ' ', '0', '@', 'P', '¿', 'p', 63, 63, 63, 63, 63, 63, 63, 63 },
  {1,  17, '!', '1', 'A', 'Q', 'a', 'q', 63, 63, 63, 63, 63, 63, 63, 63 },
  {2,  18, '"', '2', 'B', 'R', 'b', 'r', 63, 63, 63, 63, 63, 63, 63, 63 },
  {3,  19, '#', '3', 'C', 'S', 'c', 's', 63, 63, 63, 63, 63, 63, 63, 63 },
  {4,  63, 63,  '4', 'D', 'T', 'd', 't', 63, 63, '$', 63, 63, 63, 63, 63 },
  {5,  63, 37, 53, 69, 85,  101, 117, 63, 63, 63, 63, 63, 63, 63, 63 },
  {6,  22, 38, 54, 70, 86,  102, 118, 63, 63, 63, 63, 63, 63, 63, 63 },
  {7,  23, 39, 55, 71, 87,  103, 119, 63, 63, 63, 63, 63, 63, 63, 63 },
  {8,  24, 40, 56, 72, 88,  104, 120, 63, 63, 63, 63, 63, 63, 63, 63 },
  {9,  25, 41, 57, 73, 89,  105, 121, 63, 63, 63, 63, 63, 63, 63, 63 },
  {10, 26, 42, 58, 74, 90,  106, 122, 63, 63, 63, 63, 63, 63, 63, 63 },
  {11, 27, 43, 59, 75, 250, 107, 253, 63, 63, 63, 14, 63, 63, 63, 63 },
  {12, 63, 44, 60, 76, 251, 108, 63, 63, 63, 63, 63, 63, 63, 63, 63 },
  {13, 63, 45, 61, 77, 252, 109, 255, 63, 63, 63, 63, 63, 63, 63, 63 },
  {14, 30, 28, 62, 78, 29, 110, 206, 63, 63, 63, 63, 63, 63, 63, 63 },
  {15, 63, 31, 63, 79, 196, 111, 63, 63, 63, 63, 63, 63, 63, 63, 63 }
};
  /*
 {'.','.',' ','0','@','P','`','p','','',' ','°','À','Ð','à','ð',},
{'.','.','!','1','A','Q','a','q','','','¡','±','Á','Ñ','á','ñ',},
{'.','.','"','2','B','R','b','r','','','¢','²','Â','Ò','â','ò',},
{'.','.','#','3','C','S','c','s','','','£','³','Ã','Ó','ã','ó',},
{'.','.','$','4','D','T','d','t','','','¤','´','Ä','Ô','ä','ô',},
{'.','.','%','5','E','U','e','u','','','¥','µ','Å','Õ','å','õ',},
{'.','.','&','6','F','V','f','v','','','¦','¶','Æ','Ö','æ','ö',},
{'.','.',''','7','G','W','g','w','','','§','·','Ç','×','ç','÷',},
{'.','.','(','8','H','X','h','x','','','¨','¸','È','Ø','è','ø',},
{'.','.',')','9','I','Y','i','y','','','©','¹','É','Ù','é','ù',},
{'.','.','*',':','J','Z','j','z','','','ª','º','Ê','Ú','ê','ú',},
{'.','.','+',';','K','[','k','{','','','«','»','Ë','Û','ë','û',},
{'.','.',',','<','L','\','l','|','','','¬','¼','Ì','Ü','ì','ü',},
{'.','.','-','=','M',']','m','}','','','­','½','Í','Ý','í','ý',},
{'.','.','.','>','N','^','n','~','','','®','¾','Î','Þ','î','þ',},
{'.','.','/','?','O','_','o','','','','¯','¿','Ï','ß','ï','ÿ',},

   */



void Display_LowSpeed_SPI_init()
{
  //PB5 -> SCK
  //PB3 -> MOSI
  //PB2 -> CS

  //imposto i 3 pin come output e con valore HIGH
  DDRB  |= (1 << PB2) | (1 << PB3) | (1 << PB5);
  PORTB |= (1 << PB2) | (1 << PB3) | (1 << PB5);

  ClearDisplay();
  Hide_Cursor();

}

void SPI_EnableTransmission() {
  PORTB &= ~(1 << PB2); // => !0b00000100; -> 0b11111011;
  delayMicroseconds(20);
}

void SPI_DisableTransmission() {
  PORTB |= (1 << PB2);
  delayMicroseconds(70);
}

void SPI_transfer_byte(uint8_t byte_out)
{
  for (uint8_t bit = 0x80; bit; bit >>= 1) 
  {
    /* Shift-out a bit to the MOSI line */
    PORTB = (byte_out & bit) ? (PORTB | (1 << PB3)) : (PORTB & ~(1 << PB3));
    //digitalWrite(MOSI, (byte_out & bit) ? HIGH : LOW);
    delayMicroseconds(30);

    /* Pull the clock line high */
    PORTB &= ~(1 << PB5);
    delayMicroseconds(30);
    PORTB |= (1 << PB5);
    delayMicroseconds(30);
  }
}


void SPI_write_byte(uint8_t byte_out) 
{
  SPI_EnableTransmission();
  SPI_transfer_byte(byte_out);
  SPI_DisableTransmission();
}

void SPI_write_bytes(uint8_t *buffer, uint8_t Byte)
{
  SPI_EnableTransmission();
  
  for(uint8_t i = 0; i < Byte; i++) {
     SPI_transfer_byte(*buffer);
     buffer++;
  }
  SPI_DisableTransmission();
}

void SPI_write_buffer(void *buffer, uint8_t Byte)
{
  for(uint8_t i = 0; i < Byte; i++) {
     SPI_EnableTransmission();
     SPI_transfer_byte(*(uint8_t*)buffer);
     SPI_DisableTransmission();
     buffer++;
  }
}


void SPI_write_String(String str)
{
  for(uint8_t i = 0; i < str.length() || i < 40; i++){
    char ch = str.charAt(i);
    
    SPI_EnableTransmission();
    SPI_transfer_byte(translateChar((uint8_t) ch));
    SPI_DisableTransmission();
  }
}

void Set_Cursor_Position(uint8_t x, uint8_t y)
{
  if(x >= 20) x = 19;
  if(y >= 4)  y = 3;

  uint8_t buffer[] = {17, x, y};
  SPI_write_buffer(&buffer[0], sizeof(buffer));
}


void change_Backlight(uint8_t value)
{
  if(value > 100)value = 100;
  uint8_t buffer[] = {14, value};
  SPI_write_buffer(&buffer[0], sizeof(buffer));
}

uint8_t translateChar(uint8_t ch) 
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

void ClearDisplay() {         SPI_write_byte(0x0C); }
void delete_in_Place() {      SPI_write_byte(0x0B); }
void celar_Line() {           SPI_write_byte(0x0A); }
void newLine() {              SPI_write_byte(0x0D); }
void Cursor_Home() {          SPI_write_byte(0x01); }
void Hide_Cursor() {          SPI_write_byte(0x04); }
void Set_Underline_Cursor() { SPI_write_byte(0x05); }
void Set_Block_Cursor() {     SPI_write_byte(0x06); }
void Backspace() {            SPI_write_byte(0x08); }
void Enable_Scroll() {        SPI_write_byte(19);   }
void Disable_Scroll() {       SPI_write_byte(20);   }

#endif
