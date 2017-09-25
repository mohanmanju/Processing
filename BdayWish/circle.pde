class circle{
  
   PVector pos;
   PVector vel;
   PVector acc;
   int r = (int)random(255);
   int g = (int)random(255);
   int b = (int)random(255);
   
  circle(){
    pos = new PVector(random(width),height);
    vel = new PVector(0,random(-5,-3));
    acc = new PVector(0,0);
  }
  
  circle(float x, float y,int r,int g,int b){
    pos = new PVector(x,y);
    acc = new PVector(0,0);
    this.r = r;
    this.g = g;
    this.b = b;
  }
  
  void applyForce(PVector force){
    this.acc.add(force);
    
  }
  
  void update(){
   vel.add(acc); 
   this.pos.add(this.vel);
   this.acc.mult(0);
  }
  
  void show(){
    stroke(r,g,b, 180);
    strokeWeight(4);
    point(pos.x,pos.y); 
  }
  
}