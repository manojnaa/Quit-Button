float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color yellow=#006998, purple=#F56586, resetWhite=#FFFFFF, buttonColour; //Notice Nightmode BLUE Values
//
void quitButtonPopulation(int centerX, int centerY) { //ignore Parameter Concept
  quitButtonX = centerX - appWidth*1/4; //1/4 on one-half, 1/4 on other half
  quitButtonY = centerY - appHeight*1/4;
  quitButtonWidth = appWidth*1/2;
  quitButtonHeight = appHeight*1/2;
}//End quitButton
//
void quitButtonDraw() {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) { //Hover Over Effect
    buttonColour = yellow;
  } else {
    buttonColour = purple;
  }//End Hover Over Effect
  //
  //Alternate verification that mouseX&Y is on the button
  //println("X-value", quitButtonX, mouseX, quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  //println("Y-value", quitButtonY, mouseY, quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
  //
  fill(buttonColour);
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  fill(resetWhite); //Not night mode compatible, must change
  //
}//End quitButtonDraw
//
void quitButtonKeyPressed() {
  //Quit KeyBoard Button
  if ( key=='Q' || key=='q' ) exit(); //Key Board is separated on key-variables: key & keyCode
}//End quitButtonKeyPressed
//
void quitButtonMousePressed() {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit(); 
}//End quitButtonMousePressed
//
//End Quit Button
