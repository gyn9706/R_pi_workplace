
void off_sw()  // led all off
{
 fill(#0AFCDA);
 rect(230, 170, 110,60);
 fill(0);
 text("OFF",240,220); 
 
 // led display
 led_default();
} 

void on_sw()  // all led on
{
 fill(227,34,34);
 rect(230, 170, 110,60);
 fill(255);
 text("ON!!",240,220); 
 
 myPort.write('z');
 tx_buf = 'z';
 
 // led on display
 fill(227,34,34);
 ellipse(50,90,50,50);
 ellipse(120,90,50,50); 
 ellipse(190,90,50,50); 
 ellipse(260,90,50,50); 
 ellipse(320,90,50,50); 
 ellipse(390,90,50,50); 
 ellipse(460,90,50,50); 
 ellipse(530,90,50,50);
}


void led_default()
{
  myPort.write('x');
  tx_buf = 'x';
  fill(219,215,80);
  ellipse(50,90,50,50);
  ellipse(120,90,50,50);
  ellipse(190,90,50,50);
  ellipse(260,90,50,50);
  ellipse(320,90,50,50);
  ellipse(390,90,50,50);
  ellipse(460,90,50,50);
  ellipse(530,90,50,50);
}


void led_on(int k)
{
  
  
  fill(227,34,34);
  switch(k)
   {
    case 0: ellipse(50,90,50,50);  myPort.write('0');  tx_buf = 'i'; break;
    case 1: ellipse(120,90,50,50); myPort.write('1'); tx_buf = 'j'; break;
    case 2: ellipse(190,90,50,50); myPort.write('2'); tx_buf = 'k'; break;
    case 3: ellipse(260,90,50,50); myPort.write('3'); tx_buf = 'l'; break;
    case 4: ellipse(320,90,50,50); myPort.write('4'); tx_buf = 'm'; break;
    case 5: ellipse(390,90,50,50); myPort.write('5'); tx_buf = 'n'; break;
    case 6: ellipse(460,90,50,50); myPort.write('6'); tx_buf = 'o'; break;
    case 7: ellipse(530,90,50,50); myPort.write('7'); tx_buf = 'p'; break;
   } 
}

void led_off(int k)
{
  fill(219,215,80);
  switch(k)
   {
    case 0: ellipse(50,90,50,50);  myPort.write('a'); tx_buf = 'a'; break;
    case 1: ellipse(120,90,50,50); myPort.write('b'); tx_buf = 'b'; break;
    case 2: ellipse(190,90,50,50); myPort.write('c'); tx_buf = 'c'; break;
    case 3: ellipse(260,90,50,50); myPort.write('d'); tx_buf = 'd'; break;
    case 4: ellipse(320,90,50,50); myPort.write('e'); tx_buf = 'e'; break;
    case 5: ellipse(390,90,50,50); myPort.write('f'); tx_buf = 'f'; break;
    case 6: ellipse(460,90,50,50); myPort.write('g'); tx_buf = 'g'; break;
    case 7: ellipse(530,90,50,50); myPort.write('h'); tx_buf = 'h';break;
   } 
}


void slval(int sli)
{
  hex(sli);
 for(int k=0; k<=7; k++)
 {
   if((sli&0x01)==1) led_on(k);
   else led_off(k);
   sli>>=1;
 }
}
