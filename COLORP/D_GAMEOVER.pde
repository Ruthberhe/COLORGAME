
float r=0;
float z=0;
void gameover() {
  lost.play();
  background(0, 100);
  int z=0;
  while (z<30) {
    box[z].actshow();
    z++;
  }

  fill(random(255), random(255), random(255));
  text("HIGHSCORE: "+HS, width/2, height/2);
  if (score>HS) {
    HS=score;
  }


  tactile(300, 450, 200, 100);
  fill(0);
  rect(300, 450, 200, 100);
  textSize(40);
  fill(random(255), random(255), random(255));
  stroke(random(255), random(255), random(255));
  text("RESTART", 400, 500);
}


void gameoverClicks() {
  reset();
  if (mouseX>300 && mouseX<500 && mouseY>450 && mouseY<550) {
    mode=INTRO;
  }
}
