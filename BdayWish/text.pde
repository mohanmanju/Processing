class textCircle{
  
 PVector target;
 PVector current;
 PVector vel;
 PVector acc;
 
 textCircle(PVector target){
   this.target = target;
   current = new PVector(random(width),random(height));
   vel = new PVector(0,0);
   acc = new PVector(0,0);
 }
 
 void applyForce(PVector force){
   this.acc.add(force);
 }
 
 void update(){
  this.vel.add(this.acc);
  this.current.add(this.vel);
  this.acc.mult(0);
 }
 
 void move(){
   PVector mv = PVector.sub(target,current);
   mv.mult(0.02);
   PVector nextvel = PVector.sub(mv,this.vel);
   
   applyForce(nextvel);
  
   
   
 }
 
 void fly(PVector mpos){
   
   PVector mv = PVector.sub(mpos,current);
   PVector nextvel;
   mv.mult(0.01);
   float mg = mv.mag();
   
   if(mg<random(0.5,0.9)){
     mv.mult(-5);
     nextvel = PVector.sub(mv,this.vel);
     //nextvel.limit(0.1);
   }
   else
     nextvel = new PVector(0,0);
   //nextvel.limit(0.1);
   applyForce(nextvel);
   
 }
 
}