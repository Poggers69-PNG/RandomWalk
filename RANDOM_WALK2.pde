
void setup() {
  // make it bigger
  size(800, 600);

  strokeWeight(5);
  smooth();
  
  // get rid of gray line
}

void draw() {
  // put background here
  background(255);
  // put in a frame rate
  frameRate(10);
  stroke(20, 50, 70);
  int step = 10;

  float lastx = -50; // should be in the negative
  float lasty = -50; // should be in the negative

  float ynoise = random(10);
  float y;

  for (int x=0; x<=width; x+=step) {
    // using Perlin noise
    y = 10 + noise(ynoise) * 580;  // between 10 and 590
    line(x, y, lastx, lasty);
    
    lastx = x;
    lasty = y;
    ynoise += 0.1;
  }
}
