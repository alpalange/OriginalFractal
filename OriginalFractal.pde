public void setup() {
  size (400,400);
  background(150,190,225);
  stroke(220,130,130);
}

public void draw() {
  fill(150, 225, 160);
  ellipse(150, 260, 100, 50);
  ellipse(250, 260, 100, 50);
  rect(195, 200, 10, 200);
  fractal(200, 200, 30);
}

public void fractal( int x, int y, int len){
  if (len >= 100){
    ellipse(x, y, len, len*2/3);
  }
  else {
    fill((int)(Math.random()*25)+240, (int)(Math.random()*25)+170, (int)(Math.random()*25)+170);
    fractal(x+len/2, y, len*2);
    fractal(x-len/2, y, len*2);
    fractal(x, y+len/2, len*2);
    fractal(x, y-len/2, len*2);
    ellipse(x, y, len, len);
  }
}
