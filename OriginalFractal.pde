public void setup(){
  background(52);
  size(1000, 1000);
}
public void draw(){
  rCircle(500,200,650);
}
public void rCircle(int x, int y, int extent){
  if(extent <= 200){
    noFill();
    strokeWeight(5);
    stroke((int)(Math.random()*255), (int)(Math.random()*0), (int)(Math.random()*0));
    circle(x, y, extent);
    circle(x-170, y+85, extent);
    circle(x-260, y+250, extent);
    circle(x-160, y+410, extent);
    circle(x, y+485, extent);
    circle(x+170, y+85, extent);
    circle(x+260, y+250, extent);
    circle(x+160, y+410, extent);
  }else{
    rCircle(x, y, extent-60);
    rCircle(x, y+30, extent-10);
  }
}
