


void keyReleased() {
  if (keyCode==LEFT ) {
    if (notactualmatch()) {
      score++;
      plus.rewind();
      plus.play();
    } else if (actualmatch()) {
      lives--;
    }
    generateNewPuzzle();
  } else if (keyCode==RIGHT) {
    if (actualmatch()) {
      score++;
      plus.rewind();
      plus.play();
    } else if (notactualmatch()) {
      lives--;
    }
    generateNewPuzzle();
  }

  if (lives==0) {
    mode=GAMEOVER;
  }
}
