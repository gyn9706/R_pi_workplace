
void fnd_blk(int st_x, int st_y)
{
   fill(0);
   rect(st_x, st_y, 68, 90);
   fill(255);
   rect(st_x+5, st_y+14, 8, 64, 120); //fnd 5획 그리기 
   rect(st_x+12, st_y+8, 38, 10,120);
   rect(st_x+48, st_y+14, 8, 64,120);
   rect(st_x+12, st_y+72, 36,10,120);
   rect(st_x+13, st_y+40, 35, 10,120);
   fill(255);
   ellipse(st_x+63, st_y+77, 9, 9);     
}

void fnd_dis(int st_x, int st_y, int nb, int cr, int dp)
{
  fill(#00FF0E); //숫자표시색깔
  
  // dp dis
  if(dp == 1) ellipse(st_x+63, st_y+77, 9, 9); 
  else 
   {
     fill(255);
     ellipse(st_x+63, st_y+77, 9, 9); 
     fill(#00FF0E);
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
