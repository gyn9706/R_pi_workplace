
void chk_ds()
{
  checkbox1.setSelected(false);
  checkbox2.setSelected(false);
  checkbox3.setSelected(false);
  checkbox4.setSelected(false);
  checkbox5.setSelected(false);
  checkbox6.setSelected(false);
  checkbox7.setSelected(false);
  checkbox8.setSelected(false);
  
  led_buf = 0x00;
  led_cnt_dis(60, 200, led_buf);
}

void option_ds()
{
  option1.setSelected(false);
  option2.setSelected(false);
  option3.setSelected(false);
  option4.setSelected(false);
  option5.setSelected(false);
  option6.setSelected(false);
  option7.setSelected(false);
  option8.setSelected(false);
  
  //led_buf = 0x00;
  //led_cnt_dis(60, 200, led_buf);
}

void led_cnt_dis(int st_x, int st_y, int data) //gui led 임의의 위치로 가져가서 사용 가능
{
  for(; st_x <= 650;)
  {
   if((data & 0x01) == 0x01) fill(255, 0,0);
   else fill(#EFF707);
   ellipse(st_x, 200, 60, 60); 
   rect(st_x-30, st_y+70, 60,80);
   data >>= 1;
   st_x += 80;
  }  // for end
}

void led_cursor()
{
 if(((mouseY > 398) && (mouseY < 464)) || ((mouseY > 618) && (mouseY < 655)) )
  {
    if((mouseX > 30) && (mouseX < 647)) cursor(HAND);
  }
 else cursor(MOVE); 
}


void led_dis_old()
{
 int buf;
 
  for(int k=60; k <= 650;)
  {
    buf = (k/80)+1;
  
    switch(buf)
     {
       case 1:
               if((cnt & 0x01) == 0x01) fill(255, 0,0);
                else fill(#EFF707);
                ellipse(k, 200, 60, 60);
          break;
          
       case 2:
               if((cnt & 0x02) == 0x02) fill(255, 0,0);
                else fill(#EFF707);
                ellipse(k, 200, 60, 60);
          break;
       
       case 3:
               if((cnt & 0x04) == 0x04) fill(255, 0,0);
                else fill(#EFF707);
                ellipse(k, 200, 60, 60);
          break;
           
       case 4:
               if((cnt & 0x08) == 0x08) fill(255, 0,0);
                else fill(#EFF707);
                ellipse(k, 200, 60, 60);
          break;
            
       case 5:
               if((cnt & 0x10) == 0x10) fill(255, 0,0);
                else fill(#EFF707);
                ellipse(k, 200, 60, 60);
          break;
          
      case 6:
               if((cnt & 0x20) == 0x20) fill(255, 0,0);
                else fill(#EFF707);
                ellipse(k, 200, 60, 60);
          break;
           
      case 7:
               if((cnt & 0x40) == 0x40) fill(255, 0,0);
                else fill(#EFF707);
                ellipse(k, 200, 60, 60);
          break;
             
      case 8:
               if((cnt & 0x80) == 0x80); 
                else fill(#EFF707);
                ellipse(k, 200, 60, 60);
          break;
     } // switch

  //if((data & 0x01) == 0x01) fill(255, 0,0);
  //else fill(#EFF707);
  //ellipse(k, 200, 60, 60); 
  //data >>= 1;
   k += 80;
  }  // for end
}


void led_init()
{
 GPIO.pinMode(led1, GPIO.OUTPUT); // 출력으로 선언
  pin_mode_set(3, "out");
  GPIO.pinMode(led3, GPIO.OUTPUT);
  GPIO.pinMode(17, GPIO.OUTPUT);
  GPIO.pinMode(27, GPIO.OUTPUT); // 출력으로 선언
  GPIO.pinMode(22, GPIO.OUTPUT);
  GPIO.pinMode(10, GPIO.OUTPUT);
  pin_mode_set(led8, "out");
  
  // init = all off
  GPIO.digitalWrite(led1, GPIO.HIGH);
  GPIO.digitalWrite(3, GPIO.HIGH);
  GPIO.digitalWrite(led3, GPIO.HIGH);
  GPIO.digitalWrite(17, GPIO.HIGH);
  GPIO.digitalWrite(led5, GPIO.HIGH);
  GPIO.digitalWrite(22, GPIO.HIGH);
  GPIO.digitalWrite(10, GPIO.HIGH);
  GPIO.digitalWrite(led8, GPIO.HIGH);
}

void led_dis(int st_x, int st_y)
{
 textSize(20);
 cursor(ARROW);
 fill(#03FF3B);
 rect(st_x-40, st_y+60, 640, 100);
 for(; st_x <= 650;)
  {
    fill(0);
    text("LED" + str((st_x/80) + 1), st_x-1, 150); // org k-23
    fill(#EFF707);
    ellipse(st_x, st_y, 60, 60); //60, 200, 60,60
    rect(st_x-30, st_y+70, 60,80);
    st_x += 80;
  }
}  
