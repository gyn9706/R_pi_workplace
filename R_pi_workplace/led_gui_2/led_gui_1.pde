
import processing.io.*;

PFont myFont;

int cnt = 0;

void setup()
{
  size(680,680);  
  background(220);
  
  myFont = createFont("한초롬바탕", 32);
  textFont(myFont);
  textAlign(CENTER, CENTER);
  
 textSize(50); 
 strokeWeight(6);
 stroke(0,0,255);
 fill(255,0,0);
 text("IoT 전문가 과정", 340, 50);
 led_dis(60, 200);
 led_init();
}

void draw()
{
 // 실습3 카운터
  //1. led output
  byte_out(cnt);
  
  //2. 화면지움
 background(220);
 fill(255,0,0);
 textSize(50);
 text("IoT 전문가 양성과정", 340, 50);
 
  //3. 화면출력
  textSize(30);
  fill(255,0,0);
  text("Up Cnt = " + str(cnt), 100,500);
  text("Dn Cnt = " + str(255-cnt), 100,550);
  print("Up Cnt = ");
  println(cnt);
  
  //4. 카운터 값 증가
  cnt++;
  
  //5. 카운터값 Max 체크
  if(cnt > 255) cnt = 0;
  
  //6. 지연
  delay(200);
  
 led_dis(60, 200); 
// led_bar_x(36, 250);

 led_cursor();
 led_cnt_dis(60, 200, cnt);
 
 //led_bar_dis(36, 400, #FF0318, cnt);
 
  //print(mouseX);
  //print("  ");
  //println(mouseY);
  
}
