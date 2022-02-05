PShape sierCube;
float xI, yI, cX, cY;
int hY = 500;

void setup() {
  size(600, 600, P3D);
  background(255);
  camera(width/2.0+200, height/2.0-200, (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
  sierCube = createShape(GROUP);
  makeSierpinskiCube(width/2, height/2, 50, sierCube);
  shape(sierCube);
}

public void draw() {
  background(255);
  translate(height/2, width/2);
  shape(sierCube);
}

public void mousePressed() {
  xI = mouseX;
  //yI = mouseY;
}

public void mouseReleased() {
  cX += (xI-mouseX);
  //cY += (yI-mouseY);
  //cY = cY >= hY ? hY : cY <= -hY ? -hY : cY;
}

public void mouseDragged() {
  float r = (height/2.0) / tan(PI*30.0 / 180.0);
  float dX = 2*((xI-mouseX)+cX);
  float mX = cos(dX/r)*r;
  //float dY = 2*((yI-mouseY)+cY);
  //dY = dY >= hY ? hY : dY <= -hY ? -hY : dY;
  //float mY = cos(dY/r)*r;
  float mZ = sin(dX/r)*r;
  System.out.println();
  camera(width/2.0+200-mX, height/2.0-200, mZ, width/2.0, height/2.0, 0, 0, 1, 0);
}
