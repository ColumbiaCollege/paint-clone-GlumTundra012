//Your stuff
//finish this paint program.
//if you press more green enough times it goes back to black
//if you press the less green button when the cursor is black it should go to green
//hint modulo command %
//further hint the modulo command in processing doesn't play nice with negatives

//make buttons for blue and red
//debounce the buttons
//hint make a mousePressed method

//Pat on the back for marking your up/down buttons in a nice way.

//the color of the cursor will change depending of the button that is clicked 
color cursorcolor = 0;
float lessGreen = 255;
float moreGreen = 100;
float green = 0;

float blue = 0;
float moreBlue = 100;
float lessBlue = 255;
float step = 10;

float red = 0;
float moreRed = 100;
float lessRed = 255;

//background and size 
void setup() {
  size(600, 400);
  background(255);
}


//Draws buttons 
void draw() {
  noStroke();

  //lessGreen button
  fill(0, lessGreen, 0);
  rect(50, 0, 50, 50);
  if (mousePressed && 50<mouseX && mouseX<100 && mouseY<50) {
    green = lessGreen -step;
    cursorcolor = color(0, lessGreen, 0);
  }
  //moreGreen button
  fill(0, moreGreen, 0);
  rect(0, 0, 50, 50);
  if (mousePressed && mouseX<50 && mouseY<50) {
    green = moreGreen +step;
    cursorcolor = color(0, moreGreen, 0);
  } 
  //lessBlue button
  fill(0, 0, lessBlue);
  rect(100, 0, 50, 50);
  if (mousePressed && mouseX>100 && mouseX <150 && mouseY<50) {
    blue = lessBlue -step;
    cursorcolor= color(0, 0, lessBlue);
  }
  //moreBlue button
  fill(0, 0, moreBlue);
  rect(150, 0, 50, 50);
  if (mousePressed && mouseX>150 && mouseY<50) {
    blue = moreBlue +step;
    cursorcolor = color(0, 0, moreBlue);
  }
  //lessRed button
  fill(lessRed, 0, 0);
  rect(200, 0, 50, 50);
  if (mousePressed && mouseX>200 && mouseX <250 && mouseY<50) {
    red = lessRed -step;
    cursorcolor= color(lessRed, 0, 0);
  }
  //moreRed
  fill(moreRed, 0, 0);
  rect(250, 0, 50, 50);
  if (mousePressed && mouseX>250 && mouseY<50) {
    red = moreRed +step;
    cursorcolor = color(moreRed, 0, 0);
  }
  
  //drawing part
  if (mousePressed) {
    fill(cursorcolor);
    ellipse(mouseX, mouseY, 8, 8);
  }
}
