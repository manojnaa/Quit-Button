//Global Variables
//
void setup()
{
  size( 400, 300 ); //fullScreen(), displayWidth, displayHeight
  display();
  population();
  //
}//End setup
//
void draw()
{
  displayDraw();
  quitButtonDraw();
}//End draw
//
void keyPressed()
{
  quitButtonKeyPressed();
}//End keyPressed
//
void mousePressed() {
  quitButtonMousePressed();
}//End mousePressed
//
//End Main Program or Driver
