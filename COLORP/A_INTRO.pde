void intro() {

  mega.play();

  //gif
  image(gif[f], 0, 0, width, height);
  f++;
  if (f==nof) f=0;
  pushMatrix();
  textSize(Tsize);
  fill(colors[randomColor]);
  stroke(random(255), random(255), random(255));
  rotateX(PI/4);

  text("COLOR MATCH", width/2, 450);
  Tsize=Tsize+0.5;
  if (Tsize>50) {
    Tsize=10;
  }
  popMatrix();
  fill(colors[randomColor]);
  text("CLICK ANYWHERE TO BEGIN", width/2, 100);
}


void introClicks() {
  mode=GAME;
}
