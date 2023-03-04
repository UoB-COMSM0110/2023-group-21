player p1;
builds build;
int losed_flag=0;
void setup(){
   size(2000,800);
   p1 = new player();
   build=new builds();
  
}

float a;
void draw(){
     frameRate(60); 
     background(0,0,0); 
     noStroke();
      text("press and release any button to jump while on building",100,100);
     
     fill(255);
     p1.show();
     int flag=judge_onbuilding();
     if(flag==1){
        p1.update(0);
        if(keyPressed==true){
             p1.editv(20); 
            }
       }
     else if (flag==2){
       losed_flag=1;
      text("lose",100,200); 
     }
     else{ p1.update(1);}
     fill(100);
     if(losed_flag==0) {build.update();}
     build.show();
     fill(255);
     if(losed_flag==1){
      text("press to continue",100,300); 
       if(keyPressed==true){
             losed_flag=0;
             p1.editv(20);
            }
     }
     
}

int judge_onbuilding(){
   float player_x=p1.getx();
   float player_y=p1.gety();
   float player_r=p1.getr();
   for(int i=0;i<build.getsize();i++){
       float building_x=build.getx(i);
       float building_h=build.geth(i);
       float building_w=build.getw(i);
       float building_x_last=0,building_h_last=0,building_w_last=0;
       if(i>0)
       {
          building_x_last=build.getx(i-1);
          building_w_last=build.getw(i-1);
       }
       if((player_x<=building_x+building_w)&&(player_x>=building_x)&&(player_y+player_r/2>=800-building_h))
       {
         p1.edity(800-building_h-player_r/2);
         p1.editv(0);
         return 1;
       }
      if((player_x<=building_x)&&(player_x>=building_x_last+building_w_last)&&(player_y+player_r/2>=800-building_h)&&(p1.getv()<=0))
      {
        text("lose",100,200);
       return 2; 
      }
      
    }
   return 0;
}
