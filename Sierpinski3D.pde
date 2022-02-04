PShape s;
float xI, yI, cX, cY;

void setup() {
  size(600, 600, P3D);
  background(255);
  camera(width/2.0, height/2.0, (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
  translate(0, 0);
  makeSierpinskiCube(300, 300, 50, s);
}

public void draw() {
  
}

public void mousePressed() {
  xI = mouseX;
  yI = mouseY;
}

public void mouseReleased() {
  cX += (xI-mouseX);
  cY += (yI-mouseY);
}

public void mouseDragged() {
  background(255);
  float r = (height/2.0) / tan(PI*30.0 / 180.0);
  float dX = ((xI-mouseX)+cX);
  float mX = cos(dX/r)*r;
  float dY = ((yI-mouseY)+cY);
  float mY = cos(dY/r)*r;
  float mZ = sin(dX/r)*r;
  camera(width/2.0+200-mX, height/2.0+200, mZ, width/2.0, height/2.0, 0, 0, 1, 0);



  /*pushMatrix();
  float r = (height/2.0) / tan(PI*30.0 / 180.0);
  rotateY(-(xI-mouseX+cX)/r);
  rotateX(-(yI-mouseY+cY)/r);
  makeSierpinskiCube(0, 0, 50, s);
  popMatrix();*/
}
