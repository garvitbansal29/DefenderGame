final color ALIEN1 = color(0,255,0);
final color ALIEN2 = color(50,100,0);


class Alien 
{
 //members
 int x;
 int y;
 int speedX;
 int dy=-5;
 
 
 //constructors
 Alien(int x,int y, int speedX){
   this.x=x;
   this.y=y;
   this.speedX=speedX;
 }
 
 
 //methods
 void render()
 {
   //draw an alien
   fill(ALIEN1);
   ellipse(x,y,30,30);
   fill(ALIEN2);
   ellipse(x,y,50,15); 
 }
 
 void move(){
   y+= random(11)-5;  
   
    x -=speedX; 
    if (x<0 || y<0 || y>350)
    {
      x=810;     
    }
   
 }
  
}
