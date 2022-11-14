void pause() {
  mega.pause();
  textSize(80);
  fill(0);
  text("PAUSED", 700, 700);
  
}

void pauseClicks(){
  if (mouseX >0& mouseX <50 && mouseY>0 && mouseY<50) {
    mode=GAME;
    }
}
