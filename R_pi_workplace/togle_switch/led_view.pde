
import processing.serial.*;
import g4p_controls.*;

Serial myPort;   

String smg;
char rx_buf;
int flag[] = new int[10];
int buf;
int song[] = new int[10];

char tx_buf = 0;
int rx_cnt = 0, rx_end_flag = 1;
int slval = 0;
int sw1 = 0;
int sw2 = 0;
int sw3 = 0;
int sw4 = 0;
int sw5 = 0;
int sw6 = 0;
int sw7 = 0;
int sw8 = 0;
String kkk;


GCustomSlider sdr1;
GSlider slider;

//GLabel label1; 

void setup()
{
  size(640, 640);
  smooth();  
  PFont fontA = createFont("휴먼명조",32);  
  textFont(fontA, 50);
  
  // uart set
  println(Serial.list());
 // myPort = new Serial(this, Serial.list()[0], 9600);
  
  myPort = new Serial(this, "COM9", 9600);

  background(200, 200, 255);
  
 led_default();
 
 off_sw();
 
 createGUI();
 
 
  
   sdr1 = new GCustomSlider(this, 100, 550, 380, 50, null);
  // show          opaque  ticks value limits
  sdr1.setShowDecor(true, true, true, true);
  sdr1.setNbrTicks(8);
  sdr1.setLimits(0, 0, 255);
  sdr1.setEasing(1);
  
 //  label1 = new GLabel(this, 20, 120, 190, 20);
 // label1.setText("My label");
 //label1.setOpaque(true);
}

void draw()
{
 
  if((mouseY > 60) && (mouseY <=115)) cursor(HAND);
  else if((mouseY > 167) && (mouseY <= 230) && (mouseX >230) && (mouseX<= 340)) cursor(CROSS);
  else cursor(ARROW);
  
  //println(mouseX + "   " + mouseY);

  
 if(rx_end_flag == 1)
  {
    fill(255);
    rect(20,248, 560, 138); //70
    
    PFont fontA = createFont("휴먼명조",32);
    textFont(fontA, 30);
 
    fill(#FF0342);
    text("송신 Data PORT Ch1 = " + tx_buf,50, 300);  
    
    text("수신 Data PORT Ch2 = " + song[0]+song[1]+"시"+song[2]+song[3]+"분"+song[4]+song[5]+"초", 50, 370); 
    rx_end_flag = 0;
    textFont(fontA, 50);
  }
    
}


 
public void handleSliderEvents(GValueControl slider, GEvent event) {
 // if (slider == slider1 && event == GEvent.VALUE_STEADY) {
   // label1.setText(slider.getValueS());
    // complex calc here
 // }
  
   //label1.setText(slider.getValueS());
   //println(slider.getValueS());
   //println(slider.getValueI());
  //  text(slider.getValueS(),250, 450);
    slval(slider.getValueI());
  // kkk = slider.getValueS();
 //  println(kkk);
  // if(sw1 > 180) led_on(7);
  // else led_on(3);
  
  //myPort.write(slval); 
  
}

//======================================
 //rx data save
void serialEvent(Serial myPort) 
{
   //if(myPort.available() > 0)
  if(rx_end_flag == 0)
   {
     int buf = (myPort.read() & 0x0f);
     
     if(buf == '\n')
      {
        rx_cnt = 0;
        rx_end_flag = 1; 
      }
     else
      { 
       song[rx_cnt] = buf;
       rx_cnt++;
      }
   }
}
