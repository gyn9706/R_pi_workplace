import processing.io.*; //#include
boolean led_tg_flag = false; //0

int cnt=0;

void setup()
{
  size(400,400);
  //GPIO.pinMode(led1, GPIO.OUTPUT);
  pin_mode_set(led1, "out");
  pin_mode_set(led2, "out");
  pin_mode_set(led3, "out");
  pin_mode_set(led4, "out");
  pin_mode_set(led5, "out");
  pin_mode_set(led6, "out");
  pin_mode_set(led7, "out");
  pin_mode_set(led8, "out");
  
  //init = all off
  //GPIO.digitalWrite(led1, GPIO.HIGH);
  
  //bit_out(led1, 1);
  //bit_out(led2, 1);
  //bit_out(led3, 1);
  //bit_out(led4, 1);
  //bit_out(led5, 1);
  //bit_out(led6, 1);
  //bit_out(led7, 1);
  //bit_out(led8, 1);
  
  background(#75C7FC);
  //strokeWeight(6);
  //stroke(0,0,255);
  textSize(25);
}

void draw()
{
  byte_out(cnt); // 1. led output
  background(#75C7FC); //2. clear background
  println("COUNT = "+ cnt);
  text("UP COUNT = " + str(cnt), 100, 100); //3. display output
  text("DOWN COUNT = " + str(255-cnt), 100, 200);
  
  
  fill(random(255), random(255), random(255));
  //strokeWeight(random(255));
  //stroke(random(255), random(255), random(255));

  cnt++; //4.up count
  
  if(cnt==255) cnt=0; //5. check MAX count
  
  delay(100); //6. delay
  
//----------------------------------------------------------------  
  //if(led_tg_flag==false)
  //{
  //  //led on
  //  led_tg_flag=true;
  //  fill(255,0,0); //적색
  //  ellipse(width/6,height/6,width/6,height/6);
  //  println("LED ON");
    
  //  //byte control
  //  byte_out(0xaa);
    
  //  //bit control
  //  //GPIO.digitalWrite(led1,GPIO.LOW);
  //  //bit_out(led1, 0);
  //}
  //else
  //{
  //  //led off
  //  led_tg_flag=false;
  //  fill(255,220,20); //황색
  //  ellipse(width/6,height/6,width/6,height/6);
  //  println("LED OFF");
    
  //  byte_out(0x55);
    
  //  //GPIO.digitalWrite(led1,GPIO.HIGH);
  //  //bit_out(led1, 1);
  //}
  //delay(1000);
}
