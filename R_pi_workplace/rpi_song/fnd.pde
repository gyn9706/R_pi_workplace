
//int cnt = 0;
//int dp;

//void setup()
//{
//   size(400,400);
 
//   fnd_blk(70,50);  // x_1000 = x 측 좌표 배열 범위 70식 배치
//   fnd_blk(140,50);  // x_100
//   fnd_blk(210,50);  // x_10
//   fnd_blk(280,50);  // x_1  
//}

//void draw()
//{    
//     cnt++;  
  
//     fnd_blk(70,50);
//     fnd_dis(70,50,cnt/1000,255,0);  // x_1000 = x 측 좌표 배열 범위 70식 배치
      
//     fnd_blk(140,50);
//     fnd_dis(140,50,cnt%1000/100,255,0);  // x_100
           
//     fnd_blk(210,50);  
//     fnd_dis(210,50,cnt%100/10,255,0);  // x_10
     
//     fnd_blk(280,50);  // x_1
//     fnd_dis(280,50,cnt%10,255,dp);
     
//      delay(200);
      
//    println(cnt);
    
//   if(dp == 0) dp = 1;
//   else dp = 0;
//}

void fnd()
{
  fill(0);
   rect(50,50,68,90);
   fill(255);
   rect(55,64,8,64,120);
   rect(62,58,38,10,120);
   rect(98,64,8,64,120);
   rect(62,122,36,10,120);
   rect(63,90,35,10,120);
   fill(255);
   ellipse(113,127,9,9);  
}


void fnd_blk(int st_x, int st_y)
{
   fill(0);
   rect(st_x, st_y, 68, 90);
   fill(#E0F3FF);
   rect(st_x+5, st_y+14, 8, 64, 120);
   rect(st_x+12, st_y+8, 38, 10,120);
   rect(st_x+48, st_y+14, 8, 64,120);
   rect(st_x+12, st_y+72, 36,10,120);
   rect(st_x+13, st_y+40, 35, 10,120);
   fill(255);
   ellipse(st_x+63, st_y+77, 9, 9);     
}


void fnd_dis(int st_x, int st_y, int nb, int cr, int dp)
{
  fill(0,0,cr);
  
  // dp dis
  if(dp == 1) ellipse(st_x+63, st_y+77, 9, 9); 
  else 
   {
     fill(255);
     ellipse(st_x+63, st_y+77, 9, 9); 
     fill(0,0,255);
   } 
        
  switch(nb)
   {
     default:
     case 0:
               rect(st_x+12, st_y+8, 38, 10,120);
               rect(st_x+12, st_y+72, 36,10,120);              
               rect(st_x+5, st_y+14, 8, 64, 120); 
               rect(st_x+48, st_y+14, 8, 64,120);       
         break;
          
     case 1:  rect(st_x+48, st_y+14, 8, 64,120);
          break;
     
     case 2:  
               rect(st_x+12, st_y+8, 38, 10,120);
               rect(st_x+12, st_y+72, 36,10,120);
               rect(st_x+13, st_y+40, 35, 10,120);
               rect(st_x+48, st_y+14, 8, 34,120);
               rect(st_x+5, st_y+42, 8, 36, 120); //42
          break;
     
     case 3:  
               rect(st_x+12, st_y+8, 38, 10,120);
               rect(st_x+12, st_y+72, 36,10,120);
               rect(st_x+13, st_y+40, 35, 10,120);
               rect(st_x+48, st_y+14, 8, 64,120);                 
           break;
           
     case 4:
               rect(st_x+13, st_y+40, 35, 10,120);
               rect(st_x+48, st_y+14, 8, 64,120);  
               rect(st_x+5, st_y+14, 8, 32, 120);
           break;
           
     case 5:  
               rect(st_x+12, st_y+8, 38, 10,120);
               rect(st_x+12, st_y+72, 36,10,120);
               rect(st_x+13, st_y+40, 35, 10,120);
               rect(st_x+5, st_y+14, 8, 32, 120); 
               rect(st_x+48, st_y+44, 8, 33,120);  
           break;
           
     case 6:
               rect(st_x+5, st_y+14, 8, 64, 120);
               rect(st_x+48, st_y+44, 8, 33,120); 
               rect(st_x+12, st_y+72, 36,10,120);
               rect(st_x+13, st_y+40, 35, 10,120);
           break;
           
     case 7:
               rect(st_x+12, st_y+8, 38, 10,120);  
               rect(st_x+48, st_y+14, 8, 64,120); 
           break;
           
     case 8:
               rect(st_x+5, st_y+14, 8, 64, 120);
               rect(st_x+12, st_y+8, 38, 10,120);
               rect(st_x+48, st_y+14, 8, 64,120);
               rect(st_x+12, st_y+72, 36,10,120);
               rect(st_x+13, st_y+40, 35, 10,120);
           break;
           
     case 9:  
               rect(st_x+12, st_y+8, 38, 10,120);
               rect(st_x+12, st_y+72, 36,10,120);
               rect(st_x+13, st_y+40, 35, 10,120);
               rect(st_x+5, st_y+14, 8, 32, 120); 
               rect(st_x+48, st_y+14, 8, 64,120);  
           break;
           
     case 10:  // a
              rect(st_x+5, st_y+14, 8, 64, 120);
              rect(st_x+12, st_y+8, 38, 10,120);
              rect(st_x+48, st_y+14, 8, 64,120);              
              rect(st_x+13, st_y+40, 35, 10,120); 
          break;      
               
   }
}
