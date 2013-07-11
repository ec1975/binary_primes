/// binary_primes, by deadman - 220
//  prime numbers binary spatial representation over a constrained 2d area
//  this is some sort of fractal creator

// use this code as you wish, but give credit where it's due

boolean save_img = true;

float val;
String s;

PGraphics canvas;
PImage img;


// only you can do it!
void setup () {
  size (440, 440);
  img = createImage (width, height, RGB);
  renderMatrix (width, height);   
  if (save_img) {
    s = "renders/bp_" + str (width) + "_" + str (height) + ".png";    
    img.save (s);
  }  
  background (0);
}
// wake up!
void draw () {
  image (img, 0, 0);
}

// who will if you wont?
void renderMatrix (int w, int h) {
  int x=1;
  int y=0;
  canvas = createGraphics (width, height);
  

  canvas.beginDraw ();
  canvas.stroke (255);
  
  boolean prime;
  for (float i=3; i<w*h; i++) {
    if (x<w) x++;
    else { x=0; y++; }
    prime = true;
    
    for (float j=2; j<i; j++) {
      val = i%j;
      if (val==0.0) prime = false;
    }
    
    if (prime) {
      // comment the following line to achieve more speed
      println (i);
      canvas.point (x, y);
    }
  }
  
  canvas.endDraw ();
  img.copy (canvas, 0, 0, width, height, 0, 0, width, height);
}
// fight the system back! be calm, use logic and reason, be intelligent! WAKE UP!
// look for us on armageddonconspiracy.co.uk
