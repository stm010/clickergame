void game () {
  background (180, 190, 200);

  textSize (50);
  text ("Score : " + score, width/2, 50);
  text ("Lives : " + lives, width/2, 100);

  //target
  fill (255);
  stroke (0);
  strokeWeight (5);
  ellipse (x, y, 100, 100);

  //moving
  x = x+ vx;
  y = y + vy;

  //bouncing
  if (x < d/2 || x > width-d/2) {
    vx = vx * -1;
  }
  if (y < d/2 || y > height-d/2) {
    vy = vy * -1;
  }
}

void gameClicks () {
  if (dist (mouseX, mouseY, x, y) < 60) {
    score = score + 1;
  } else {
    lives = lives -1;
    if (lives < 1) {
      mode = GAMEOVER; 
    }
  }
}
