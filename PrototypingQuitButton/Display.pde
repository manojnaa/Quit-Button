int appWidth, appHeight;
String portrait, displayOrientation;
//
void display() {
  //Landscape, not portrait nor square
  String landscape = "You are good to go!";
  portrait = "Bruh, turn your phun!";
  displayOrientation = ( width >= height ) ? landscape : portrait ;
  if ( displayOrientation==portrait ) println ( displayOrientation );
  if ( displayOrientation==landscape ) appWidth = width; //option displayWidth
  if ( displayOrientation==landscape ) appHeight = height; //option displayHeight
  //println (appWidth, appHeight);
  //
}//End display
//
void displayDraw() {
  //Display Orientation Feedback, works better if feedback to CANVAS
  if ( displayOrientation==portrait ) println ( displayOrientation ); //Portrait Display Orientation
  // Will need to rerun the appWidth & appHeight code here
  //(separate void, 2nd reason to create subprograms is "copy and paste lines of code")
}//End displayDraw
