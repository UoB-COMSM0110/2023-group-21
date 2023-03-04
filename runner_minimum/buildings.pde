class buildings{
  float h,w,x,v;
  buildings(){
    h=random(100,200);
    w=random(100,200);
    x=2000;
    v=10;
    
  }
  void update_b(){
   if(x>0){ x=x-v;} 
    
  }
  void show_b(){
    rect(x,800-h/2,h,w);
  }
  float getw(){
   return w; 
  }
  float getv(){
    return v;
  }
   float getx(){
    return x;
  }
  float geth(){
    return h;
  }
  void editw(float ww){
    w=ww;
  }
  void editx(float xx){
    x=xx;
  }
  void editv(float vv){
    v=vv;
  }
 
  
}
