import processing.io.*;

int fnd[]={11,5,6,13,19,26,21,20,16,12,7,8};
int buf=1234;
int t_loop=0;
int tg_flag=0;

void setup()
{
  for(int k=0; k<=11; k++){
    pin_mode_set(fnd[k],"out");
  }
}

void draw()
{
  t_loop++;
  if(t_loop>1)
  {
    t_loop=0;
    if(tg_flag == 0) tg_flag=1;
    else tg_flag=0;
  }
  
  if(tg_flag==1){
    fnd_out(buf);
  }
  //fnd_out(buf);
  //delay(2);
}
