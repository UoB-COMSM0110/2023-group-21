class player{
  float r,g,v,x,y;
  player(){
   x=300;
   y=600;
   r=30;
   g=0.5;
   v=10;
  }
  void update(int flag){
   if(y<=800-r/2&&flag==1) {y-=v;
   v-=g;}
   else {v=0;}
  }
  void show(){
   circle(x,y,r);     
  }
  float getx(){
   return x; 
  }
  float gety(){
   return y; 
  }
  float getr(){
   return r; 
  }
  float getg(){
   return g; 
  }
  float getv(){
   return v; 
  }
 void edity(float yy){
   y=yy;
 }
 void editv(float vv){
   v=vv;
 }

}
