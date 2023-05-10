 void led_dis()
  {
    textSize(20);
    cursor(ARROW); 
    
    for(int k=60; k<=650;)
    {
      fill(0);
      text("LED"+str((k/80)+1),k-20,160);
      fill(#FFA7FE);
      ellipse(k, 200, 60, 60);
      k+=80;
    }
  }
  
  void led_init()
  {
    pin_mode_set(led1, "out");
    pin_mode_set(led2, "out");
    pin_mode_set(led3, "out");
    pin_mode_set(led4, "out");
    pin_mode_set(led5, "out");
    pin_mode_set(led6, "out");
    pin_mode_set(led7, "out");
    pin_mode_set(led8, "out");
    
    bit_out(led1, 1);
    bit_out(led2, 1);
    bit_out(led3, 1);
    bit_out(led4, 1);
    bit_out(led5, 1);
    bit_out(led6, 1);
    bit_out(led7, 1);
    bit_out(led8, 1);
  }
  
  void led_cursor()
  {
    //println(mouseX , mouseY); //28~93 167~233 //107~173 187~253 267~333 347~413 427~493 507~573 587~653
  
    if((mouseY > 167)&&(mouseY < 233))
    {
      if((mouseX > 28)&&(mouseX < 653)) cursor(HAND);
    }
    else cursor(MOVE);
  }
  
  
void led_cnt_dis(int st_x, int st_y, int data)
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
  
//----------------------------------------------------------  
  void led_cnt_dis_old()
  {
    int buf;
    for(int k=60; k<=650;)
    {
      buf = (k/80)+1;
    
    switch(buf)
    {
      case 1: 
        if((cnt & 0x01) == 0x01) fill(255,0,0); 
        else fill(#FFA7FE);
        ellipse(k, 200, 60, 60);
        break;
      case 2:
        if((cnt & 0x02) == 0x02) fill(255,0,0); 
        else fill(#FFA7FE);
        ellipse(k, 200, 60, 60);
        break;
      case 3:
        if((cnt & 0x04) == 0x04) fill(255,0,0); 
        else fill(#FFA7FE);
        ellipse(k, 200, 60, 60);
        break;
      case 4:
        if((cnt & 0x08) == 0x08) fill(255,0,0); 
        else fill(#FFA7FE);
        ellipse(k, 200, 60, 60);
        break;
      case 5:
        if((cnt & 0x10) == 0x10) fill(255,0,0); 
        else fill(#FFA7FE);
        ellipse(k, 200, 60, 60);
        break;
      case 6:
        if((cnt & 0x20) == 0x20) fill(255,0,0); 
        else fill(#FFA7FE);
        ellipse(k, 200, 60, 60);
        break;
      case 7:
        if((cnt & 0x40) == 0x40) fill(255,0,0); 
        else fill(#FFA7FE);
        ellipse(k, 200, 60, 60);
        break;
      case 8:
        if((cnt & 0x80) == 0x80) fill(255,0,0); 
        else fill(#FFA7FE);
        ellipse(k, 200, 60, 60);
        break;
      } //switch
      k+=80;
    } //for end
  }
