public class buildings_{
  float h,w,x,v;
  buildings_(){
    h=random(100,200);
    w=random(150,250);
    x=2000;
    v=10;
    
  }
  void update_b(){
   if(x>0){ x=x-v;} 
    
  }
  void show_b(){
    rect(x,800-h,w,h);
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
