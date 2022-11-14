void mousePressed() {
  if (mode==INTRO) {
    introClicks();
  } else if (mode==GAME) {
    gameClicks();
  } else if (mode==PAUSE) {
    pauseClicks();
  } else if (mode==GAMEOVER) {
    gameoverClicks();
  } else {
  }
}

void tactile(int x, int y, int w, int h) {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
    strokeWeight(8);
    stroke((colors[randomColor]));
  } else
  strokeWeight(5);
  stroke(255);
}

boolean rectclicked(int x, int y, int w, int h) {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
    return true;
  } else {
    return false;
  }
}
