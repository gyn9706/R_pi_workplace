


void mousePressed()
{
  if (mouseButton == LEFT)
  { //if-1
   if((mouseY > 50) && (mouseY <= 110))
    { //if-2
     if((mouseX >= 27) && (mouseX <= 73))  // led 1
      {
       if(flag[0] == 0) {flag[0] = 1; led_on(0);}
       else {flag[0] = 0; led_off(0);} 

      }
     else if((mouseX >= 97) && (mouseX <= 144)) // led 2
      {
       if(flag[1] == 0) {flag[1] = 1; led_on(1);}
       else {flag[1] = 0; led_off(1);} 
      }
     else if((mouseX >= 169) && (mouseX <= 212)) // led 3
      {
       if(flag[2] == 0) {flag[2] = 1; led_on(2);}
       else {flag[2] = 0; led_off(2);} 
      }
     else if((mouseX >= 237) && (mouseX <= 284)) // led 4
      {
       if(flag[3] == 0) {flag[3] = 1; led_on(3);}
       else {flag[3] = 0; led_off(3);} 
      }
     else if((mouseX >= 298) && (mouseX <= 340)) // led 5
      {
       if(flag[4] == 0) {flag[4] = 1; led_on(4);}
       else {flag[4] = 0; led_off(4);} 
      } 
     else if((mouseX >= 367) && (mouseX <= 411)) // led 6
      {
       if(flag[5] == 0) {flag[5] = 1; led_on(5);}
       else {flag[5] = 0; led_off(5);} 
      }   
     else if((mouseX >= 434) && (mouseX <= 481)) // led7
      {
       if(flag[6] == 0) {flag[6] = 1; led_on(6);}
       else {flag[6] = 0; led_off(6);} 
      } 
     else if((mouseX >= 511) && (mouseX <= 558)) // led8
      {
       if(flag[7] == 0) {flag[7] = 1; led_on(7);}
       else {flag[7] = 0; led_off(7);} 
      }    
    } // if-2-end  
   else if((mouseY > 167) && (mouseY <= 230) && (mouseX >230) && (mouseX<= 340)) // 전체 on/off sw
    {
     if(flag[8] == 0) {flag[8] = 1; on_sw();}
      else {flag[8] = 0; off_sw(); myPort.write('8'); tx_buf = '8';} 
    }
  } //----------- if-1-end
 else if (mouseButton == RIGHT) {
    //fill(255);
  } 
 else { // SENTER 
   // fill(126);
  }
}