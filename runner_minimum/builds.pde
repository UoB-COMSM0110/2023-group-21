import java.util.ArrayList;

class builds{
   ArrayList<buildings_> bu;
   float interval_time;
   
   
   builds(){
    bu=new ArrayList<>(); 
    for(int i=1;i<=5;i++){
      buildings_ single_build=new buildings_();
      single_build.editw(250);
      single_build.editx(i*400);
      bu.add(single_build);
    }
    interval_time=300;
   }
   
   void update(){
     for(int i=0;i<bu.size();i++){
        bu.get(i).update_b();
        if(bu.get(i).getx()<=0) {bu.remove(i);}
     }
     interval_time-=bu.get(bu.size()-1).getv();
     if(interval_time<=0) {add1();}
   }
   
  void show(){
    for(int i=0;i<bu.size();i++){
        bu.get(i).show_b();
     }  
  }
  
  void add1(){
    buildings_ new_build=new buildings_();
    bu.add(new_build);
    interval_time=new_build.getw()/new_build.getv()+300;
  }
  
  float getw(int n){
   return bu.get(n).getw(); 
  }
   float getv(int n){
   return bu.get(n).getv(); 
  }
   float getx(int n){
   return bu.get(n).getx(); 
  }
   float geth(int n){
   return bu.get(n).geth(); 
  }
  int getsize(){
  return bu.size();
  }
}
