
import processing.io.*;
import g4p_controls.*;

PFont myFont;

int cnt = 0;
int led_buf = 0;
int[] led_box = new int[10];
//int[] led_box = {0,0,0,0,0,0,0,0}; 

void setup()
{
  size(680,800);  
  smooth();
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
 createGUI();          
 
 fnd_blk(200,500);  // x_1000 = x 측 좌표 배열 범위 70식 배치
 fnd_blk(270,500);  // x_100
 fnd_blk(340,500);  // x_10
 fnd_blk(410,500);  
               
}

void draw()
{
 // 실습3 카운터
  //1. led output
  //byte_out(0xff-cnt);
  
  //2. 화면지움
 background(220);
 fill(255,0,0);
 textSize(50);
 text("IoT 전문가 양성과정", 340, 50);
 
  //3. 화면출력
  //textSize(30);
  //fill(255,0,0);
  //text("Up Cnt = " + str(cnt), 100,700);
  //text("Dn Cnt = " + str(255-cnt), 100,750);
  //print("Up Cnt = ");
  //println(cnt);
  
  //4. 카운터 값 증가
  cnt++;
  
  //5. 카운터값 Max 체크
  if(cnt > 255) cnt = 0;
  
  //6. 지연
  delay(200);
  
  strokeWeight(6);
  stroke(0, 0, 255);
  led_dis(60, 200); 
  led_cnt_dis(60, 200, led_buf);
 
 noStroke();
 fnd_blk(200,490);  // x_1000 = x 측 좌표 배열 범위 70식 배치
 fnd_dis(200,490,cnt/1000,255,0);  // x_1000 = x 측 좌표 배열 범위 70식 배치
 
 fnd_blk(270,490);  // x_100
 fnd_dis(270,490,cnt%1000/100,255,0);  // x_100
 
 fnd_blk(340,490);  // x_10
 fnd_dis(340,490,cnt%100/10,255,0);  // x_10
 
 fnd_blk(410,490);    
 fnd_dis(410,490,cnt%10,255,1);
 
  //print(mouseX);
  //print("  ");
  //println(mouseY);
  
}

/*
void mousePressed() {
     if (mouseButton == LEFT) {
        switch(mouse_cnt)
         {
           case 1: led_cnt_dis(60, 200, 0x01); break; 
         } //switch end
     } // if end
}    
*/
