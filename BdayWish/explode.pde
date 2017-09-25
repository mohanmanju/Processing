class explode{
  
  circle particles[] ;
  int lifespan = 100;
 
  explode(float x, float y,int r,int g,int b){
    particles = new circle[20];
    for(int i = 0; i<particles.length; i++){
      particles[i] = new circle(x,y,r,g,b);
      particles[i].vel = new PVector(random(-1,1),random(-1,1));
    }
  }
  
  void applyForce(PVector force){
    for(int i = 0; i<particles.length; i++){
      particles[i].applyForce(force);
    }
    
  }
  
  void update(){
    
    for(int i = 0; i<particles.length; i++){
      particles[i].update();
    }
    
  }
  
  void show(){
    for(int i = 0; i<particles.length; i++){
      
      particles[i].show();
    }
    
    lifespan--;
  }
}