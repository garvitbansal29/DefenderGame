class Defender{
  int x;
  int y;
  int dy;
  Defender(int x, int y, int dy){
    this.x=x;
    this.y=y;  
    this.dy=dy;
  }
  
  
   void render() {
   //draw a defender
   fill(255,0,0);
   rect(x,y,50,20);
   triangle(x+50,y,x+50,y+20,x+60,y+10);
   fill(0,0,300);
   rect(x,y-10,20,10);
   }
   
   boolean alienCollision()
    {
      color detectedColor;
      for (int i=y; i<=D1.y+30; i++)
      {
        detectedColor = get(D1.x+60,i);
        if (detectedColor== ALIEN1)
        {
          return true;
        }
      }
      return false;
    }
   
 
  
}
