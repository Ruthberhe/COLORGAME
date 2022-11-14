void game() {
  background(0);
  mega.play();

  int z=0;
  while (z<20) {
    box[z].actshow();
    z++;
  }

  println(score, lives);

  //colors
  textSize(90);
  fill(colors[randomColor], a);
  a=a-1;
  text(words[randomWord], x, y);
  y=y+3;
  tsize=tsize-0.05;
  if (y>610) mode=GAMEOVER;



  //score, lives, highscore
  textSize(30);
  fill(255);
  text("SCORE: "+score, 100, 50);
  text("LIVES: "+lives, 700, 50);

  //pause button
  stroke(0);
  fill(255);
  square(0, 0, 50);
  rect(10, 10, 10, 30);
  rect(30, 10, 10, 30);



  //correct/notcorrect;
  fill(0);
  tactile(100, 550, 130, 80);
  rect(100, 550, 130, 80);
  tactile(650, 550, 100, 80);
  rect(650, 550, 100, 80);

  textSize(22);
  fill(colors[randomColor]);
  text("NOT MATCH", 160, 565);
  textSize(25);
  text("MATCH", 700, 565);
}

void gameClicks() {
  if (rectclicked(0, 0, 50, 50)) {
    mode=PAUSE;
  }

  if (rectclicked(650, 550, 120, 80)) {
    if (actualmatch()) {
      score++;
      plus.rewind();
      plus.play();
    } else  if (rectclicked(650, 550, 120, 80)) {
      if (notactualmatch()) {
        lives--;
        incorrect.rewind();
        incorrect.play();
      }
    }

    generateNewPuzzle();
  } else if (rectclicked(100, 550, 130, 80)) {
    if (notactualmatch()) {
      score++;
      plus.rewind();
      plus.play();
    } else  if (rectclicked(100, 550, 130, 80)) {
      if (actualmatch()) {
        lives--;
        incorrect.rewind();
        incorrect.play();
      }
    }

    generateNewPuzzle();
  }
  if (lives==0) mode=GAMEOVER;
}

boolean actualmatch() {
  if (randomColor==randomWord) {
    return true;
  } else
    return false;
}

boolean notactualmatch() {
  if (randomWord>randomColor || randomWord<randomColor) {
    return true;
  } else
    return false;
}

void splits() {
  randomMatch=(int) random(0, 2);
  if (randomMatch<1) {
    randomColor = randomWord;
  } else if (randomMatch>1) {
    generateNewPuzzle();
  }
}



void generateNewPuzzle() {

  randomWord=(int) random(0, 6);
  randomColor=(int) random(0, 6);
  a=300;
  x= (int)random(150, 400);
  y=(int) random(0, 300);
  splits();
}
