
#ifndef CrystalFontzDisplayLCD_h
#define CrystalFontzDisplayLCD_h

#include <arduino.h>

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

class Display
{
  private:
    void SPI_transfer_byte(uint8_t byte_out) ;
    void SPI_DisableTransmission()           ;
    void SPI_EnableTransmission()            ;
    void SPI_write_byte(uint8_t byte_out);
    void SPI_write_bytes(uint8_t *buffer, uint8_t NByte);
    uint8_t translateChar(uint8_t ch);
    

  public:
    //const static uint8_t displayCol = 20; 
    //const static uint8_t displayRow = 4; 
    
    Display(void);
    void init(void);
    void WriteBuffer(void *buffer, uint8_t Byte, boolean translate);
    void WriteString(String str, boolean translate);
    void SetCursorPosition(uint8_t x, uint8_t y);
    void Change_Backlight(uint8_t value);

    void Clear();
    void Delete_in_Place();
    void CelarLine();
    void NewLine();
    void GoHome();
    void HideCursor();
    void SetUnderlineCursor();
    void SetBlockCursor();
    void Backspace();
    void EnableScroll();
    void DisableScroll();
};

#endif
