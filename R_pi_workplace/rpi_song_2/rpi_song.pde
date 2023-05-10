import processing.io.*;
import g4p_controls.*;

PFont myFont;

int cnt = 0;
int led_buf = 0;
int[] led_box = new int[10];
//int[] led_box = {0,0,0,0,0,0,0,0}; 

int fnd[]={11,5,6,13,19,26,21,20,16,12,7,8};
//int buf=1234;
int t_loop=0;
int tg_flag=0;
int buf=1234;


void setup()
{
 // size(680,800);  
 // smooth(); //그래픽, 이미지 등 부드럽게 처리 
 // background(220);
  
 // myFont = createFont("한초롬바탕", 32);
 // textFont(myFont);
 // textAlign(CENTER, CENTER);
  
 //textSize(50); 
 //strokeWeight(6);
 //stroke(0,0,255);
 //fill(0);
 //text("IoT 전문가 과정", 340, 50);
 //led_dis(60, 200); //led 8개 그림 
 //led_init(); //R-Pi 초기화 
 //createGUI(); //gui(체크박스, 옵션 기타 등등) 위치 및 객체 생성  
 
 ////fnd display
 //noStroke(); //fnd에는 stroke 적용 안함 
 //fnd_blk(200,490);  // x_1000 = x 측 좌표 배열 범위 70식 배치
 //fnd_blk(270,490);  // x_100
 //fnd_blk(340,490);  // x_10
 //fnd_blk(410,490);  // x_1
 
 //7-segment fnd
 for(int k=0; k<=11; k++){
    pin_mode_set(fnd[k],"out");
  }
 
}

void draw()
{
  //// 실습3 카운터
  ////1. led output
  //byte_out(0xff-cnt);
  
  ////2. 화면지움 (겹치지 않도록)
  //background(220);
  //fill(0);
  //textSize(50);
  //text("IoT 전문가 양성과정", 340, 50);
 
  ////3. 화면출력
  ////textSize(30);
  ////fill(255,0,0);
  ////text("Up Cnt = " + str(cnt), 100,700);
  ////text("Dn Cnt = " + str(255-cnt), 100,750);
  ////print("Up Cnt = ");
  ////println(cnt);
  
  ////4. 카운터 값 증가
  //cnt++;
  
  ////5. 카운터값 Max 체크
  //if(cnt > 255) cnt = 0;
  
  ////6. 지연
  ////delay(200);
  
  
  ////지워진 화면 다시 표시
  //strokeWeight(8);
  //stroke(0,0,255); 
  //led_dis(60, 200);
 
  //noStroke();
  //fnd_blk(200,490);  // x_1000 = x 측 좌표 배열 범위 70식 배치
  //fnd_dis(200,490,cnt/1000,255,0);  //시작x,y,data,color,dp
  
  //fnd_blk(270,490);  // x_100
  //fnd_dis(270,490,cnt%1000/100,255,0);  
 
  //fnd_blk(340,490);  // x_10
  //fnd_dis(340,490,cnt%100/10,255,0);  
  
  //fnd_blk(410,490);  // x_1 
  //fnd_dis(410,490,cnt%10,255,1);
 
  //led_cursor();
  //led_buf = cnt;
  //led_cnt_dis(60, 200, led_buf); //led_buf에 임의의 데이터 써주면 led모듈에 표시됨
 
  //t_loop++;
  //if(t_loop>1)
  //{
  //  t_loop=0;
  //  if(tg_flag == 0) tg_flag=1;
  //  else tg_flag=0;
  //}
  
  //if(tg_flag==1){
    fnd_out(buf);
  //}
 
  //map(cnt,0,9999,0,255)
 
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
