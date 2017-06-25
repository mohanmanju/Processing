star s[] = new star[800];
void setup(){
  size(800,800);
  for(int i=0;i<s.length;i++){
    s[i] = new star();
  }
}

void draw(){
   background(0); 
   translate(width/2,height/2);
   for(int i=0;i<s.length;i++){
     
     s[i].update();
     s[i].show();
   }
   
}