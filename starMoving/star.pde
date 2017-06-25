class star{
 
   float x;
     float y;
     float z;
  star(){
   
    x = random(-width, width);
      y = random(-width, width);
     z = random(width);
     
  }
  
  
  void show(){
     fill(255);
     
     float sx = map(x/z ,0,1,0,width);
     float sy = map(y/z ,0,1,0,width);
     float r = map(z,0,width,16,0);
     ellipse(sx,sy,r,r);
  }
  
  void update(){
    
    z=z-10;
    if(z<1){
      z=random(width);
      x = random(-width, width);
      y = random(-width, width);
    }
    
  }
}