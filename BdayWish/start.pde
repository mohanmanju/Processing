import geomerative.*;

ArrayList<circle> cracker;
ArrayList<explode> bust;
circle tempCircle;
explode tempExplode;
int pos;

ArrayList<textCircle> pointList;   
RFont font;
RGroup myGroup;
RPoint[] textPoints;
String myText = "Happy Birthday";

void setup(){
  
 //size(800,600,P2D);
 fullScreen(P2D);
 background(51);
 cracker = new ArrayList<circle>();
 bust = new ArrayList<explode>();
 colorMode(RGB);
 
 
  RG.init(this);  
  font = new RFont("Roboto-Bold.ttf", 170, CENTER);
  RCommand.setSegmentLength(13);
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);
  myGroup = font.toGroup(myText);
  myGroup = myGroup.toPolygonGroup();
  textPoints = myGroup.getPoints();
  pointList = new ArrayList<textCircle>();
  
   for (int i = 0; i < textPoints.length; i++) {
    float xx = textPoints[i].x + width/2;             
    float yy = textPoints[i].y + height/2;                                                
    pointList.add( new textCircle(new PVector(xx, yy) ));             
  }
  println(pointList.size ());

}


 
void draw(){
  
  if(random(1)<0.05)
    cracker.add(new circle());
  fill(0, 20);
  noStroke();
 rect(0,0,width,height);
 
 strokeWeight(6);
 for (int i = 0; i < pointList.size (); ++i) {        //VISUALIZE THE POINT SET    
    textCircle V = pointList.get(i);
    V.move();
    V.fly(new PVector(mouseX,mouseY));
    V.update();
    stroke(random(255),random(255),random(255));
    point(V.current.x, V.current.y);
  }
 
 
 
  for(int i = cracker.size()-1; i >= 0; i--){
      tempCircle = cracker.get(i);
      tempCircle.show();
      
      
      tempCircle.applyForce(new PVector(0,0.02));
      tempCircle.update();
    if(tempCircle.vel.y > 0 ){
      float x = tempCircle.pos.x;
      float y = tempCircle.pos.y;
      bust.add(new explode(x,y,tempCircle.r,tempCircle.g,tempCircle.b));
      cracker.remove(i);
    }
    
  }
  
  for(int i = bust.size()-1; i>=0; i--){
    tempExplode = bust.get(i);
    tempExplode.applyForce(new PVector(0,0.01));
    tempExplode.update();
    tempExplode.show();
    if(tempExplode.lifespan<0){
      bust.remove(i);
    }
  }
  //println(cracker.size());
  
 
}