//Global Variables
int appWidth, appHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color yellow=#F9984F, purple=#FF777F, resetWhite=#FFFFFF, buttonColour; //Notice NightMode Blue Values
//
void setup() {
  fullScreen();
  //Landscape, not portrait nor square
  String landscape = "You are good to go!";
  String portrait = "Bruh, turn your phun!";
  String displayOrientation = ( width >= height ) ? landscape : portrait ;
  if ( displayOrientation==portrait ) println ( displayOrientation ); //Portrait Display Orientation
  if ( displayOrientation==landscape ) appWidth = displayWidth;
  if ( displayOrientation==landscape ) appHeight = displayHeight;
  println (appWidth , appHeight); //will be NULL if portrait ... until landscape (future lesson)
  //
  //Note: variables similar to Face Rect() on Measles
  int smallerDisplayDimension = appHeight;
  int canvasCenter = smallerDisplayDimension*1/2; //thinking experiment
  quitButtonX = (appWidth*1/2) - appWidth*1/4; //1/4 on one-half, 1/4 on other half
  quitButtonY = canvasCenter - appHeight*1/4;
  quitButtonWidth = appWidth*1/2;
  quitButtonHeight = appHeight*1/2;
}//End setup
//
void draw() 
{
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    buttonColour = yellow;
  } else {
    buttonColour = purple;
  }
  fill(buttonColour);
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  fill(resetWhite);
}//End draw
//
void keyPressed()
{
  //Quit KeyBoard Button
  if ( key=='Q' || key=='q' ) exit(); //Key Board is separated on key-variables: key & keyCode
  //
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End Main Program
