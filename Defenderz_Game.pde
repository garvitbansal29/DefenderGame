
PImage background;
int bgX=0; //global variable background location


Alien A1, A2, A3;
Defender D1;
boolean gameMode;

void setup(){
 size(800,400);
 background = loadImage("spaceBackground.jpg");
 background.resize(width,height);
 A1= new Alien(700,200,2);
 A2= new Alien(500, 200, 2); 
 A3= new Alien(600, 200, 2);
 D1=new Defender(100, 200,2);
}
void draw ()
{
  testEnd();
  if (gameMode==true)
  {
    drawBackground();
    A1.render();
    A1.move();
    A2.render();
    A2.move();
    A3.render();
    A3.move();
    
    D1.render();
  }
  else 
    exit();
}

void testEnd()
{
 if (D1.alienCollision()==true)
 {
   gameMode=false;
 }
 else
   gameMode=true;
}

void keyPressed()
{
  if(keyCode== UP && D1.y>=10)
    {
      D1.y -=4;
    }
  else if (keyCode==DOWN && D1.y<=(height-30))
  {
    D1.y +=4;
  }
}

void drawBackground()
{
 image(background, bgX, 0); //draw background twice adjacent
 image(background, bgX+background.width, 0);
 bgX -=4;
 if(bgX == -background.width)
   bgX=0; //wrap background
}
