import g4p_controls.*;
import processing.io.*;

PFont myFont;
int cnt=0;

void setup()
{
  size(700,700);
  background(#F2FFA7);
  
  myFont = createFont("한초롬바탕", 32);
  textFont(myFont);
  textAlign(CENTER, CENTER);
  
  strokeWeight(6);
  stroke(0,0,255);
  textSize(50);
  fill(0);
  text("Internet of Things 4th", 320, 50);
  
 led_dis(60, 200);
 led_init();
}

void draw()
{ 
  byte_out(cnt); // 1. led output
  background(#F2FFA7); //2. clear background
  
  textSize(50);
  fill(0);
  text("Internet of Things 4th", 320, 50);
  textSize(30); //3. display output
  text("UP COUNT = " + str(cnt), 120, 600); 
  text("DN COUNT = " + str(255-cnt), 120, 650);
  println("COUNT = "+ cnt);
  
  cnt++; //4.up count
  
  if(cnt>255) cnt=0; //5. check MAX count
  
  delay(100); //6. delay
  led_dis(60, 200); 
  led_cursor();
  led_cnt_dis(60, 200, cnt);
 
  //led_dis(60, 200); 
  //led_cursor();
  //led_cnt_dis(60, 200, cnt);

  
}
