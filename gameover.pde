void gameover () {
  background (255,0,0);
  textSize (100);
  text ("GAME OVER :(", 400,400);
}

void gameoverClicks () {
  mode = INTRO;
  lives = 3;
  score = 0;
}
