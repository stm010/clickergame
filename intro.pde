void intro () {
  background (0);

stroke (255);
  circle (x, y, 200);

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

 tactile (400,500,200,100);
  //start button
  fill (255);
  rect (400, 500, 200, 100); //coord,coord,width,height
  fill (0);
  textSize (30);
  text ("START", 400, 495);

  fill (255);
  textSize (100);
  text ("CLICKER GAME", 400, 300); //coords
}

void introClicks () {
  if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 550)
    mode = GAME;
}

void tactile (int x, int y, int w, int h) {
  if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 550) {
    strokeWeight (5);
    stroke (200,0,0);
  } else {
    strokeWeight (1);
    stroke (0);
  }
}
