
final int x1000 = 11;
final int x100 = 5;
final int x10 = 6;
final int x1 = 13;

final int fnd_font[] = //캐소드 
{
   // 0,   1,   2,   3,   4,   5,   6,   7,   8,   9,   H,   L,   E,   o,   P,  F,
   0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x27,0x7f,0x6f,0x76,0x38,0x79,0x5c,0x73,0x71,
   // C,    d,    A,    u,    T,    r,   b,  blk
   0x39, 0x5e, 0x77, 0x1c, 0x44, 0x50, 0x7c, 0x00
};

final int fnd_font2[]=
{ // 0,  1,   2,   3,   4,   5,   6,   7,   8,   9,
  0xcf,0x06,0xcf,0x99,0x6d,0xbd,0xc7,0x7f,0x6f, 0xf7
};

int scan=0;
void fnd_out(int data)
{
  scan++;
  if(scan>4) scan=1;
  
  switch(scan)
  {  
   case 1: // x1000
           bit_out(x1, 0); // fnd off
           byte_out_fnd(0xff-fnd_font[data/1000]); 
           bit_out(x1000, 1); // fnd on
    break;

   case 2: // x100 자리
           bit_out(x1000, 0); // fnd off
           byte_out_fnd(0xff-fnd_font[data%1000/100]);
           bit_out(x100, 1); // fnd on
    break;
    
   case 3: // x10자리
           bit_out(x100, 0); // fnd off
           byte_out_fnd(0xff-fnd_font[data%100/10]); 
           bit_out(x10, 1); // fnd on  
    break;
    
   case 4: // x1
           bit_out(x10, 0); // fnd off
           byte_out_fnd(0xff-fnd_font[data%10]); 
           bit_out(x1, 1); // fnd on  
    break;
  }  
}
