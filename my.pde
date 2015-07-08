/* @pjs preload="1234.jpg"; */
PImage img;
float x=0,v=0,a=0.25;

void setup(){
  size(500,500);
  img = loadImage("1234.jpg");
}  
  
void draw(){  
  clear();
  background(255,255,255);
  image(img,0,0-x*0.1,500,520);
  strokeWeight(2);
  rect(160.0,80+x,180.0,140.0);
  rect(170.0,90+x,160.0,120.0);
  strokeWeight(4);
  line(200,40+x,220,80+x);
  line(280,80+x,300,40+x);
  strokeWeight(6);
  line(190,140+x,225,105+x);
  line(310,140+x,275,105+x);

  arc(235,175+x,28,28,0,PI+QUARTER_PI);
  arc(265,175+x,28,28,-QUARTER_PI,PI);

  v=v+a;
  x=x+v;
  if(v>=10){
    v=-v-a;
  }  
}