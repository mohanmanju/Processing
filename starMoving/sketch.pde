star s[] = new star[100];
void setup(){
  size(400,400);
  for(int i=0;i<s.length;i++){
    s[i] = new star();
  }
}

void draw(){
   background(0); 
   
   for(int i=0;i<s.length;i++){
     
     s[i].update();
     s[i].show();
   }
   
}