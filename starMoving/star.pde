class star{
 
   float x;
     float y;
     float z;
  star(){
    
     
     x = random(0, width);
     y = random(0, width);
     z = random(width, height);
     
  }
  
  
  void show(){
     fill(255);
     ellipse(this.x,y,10,10);
  }
  
  void update(){
    
  }
}