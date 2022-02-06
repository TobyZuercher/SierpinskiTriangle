PShape sierCube;
float xI, yI, cX, cY;
int cubeSize = 350; //works decent from 150-350, <150 and it looks sad :( but >350 the rotation stops working properly, although it should still be displayable up until it's too big for the screen.

void setup() {
  size(600, 600, P3D);
  background(255);
  colorMode(HSB, 360, 100, 100);
  camera(width/2.0+cubeSize, height/2.0-(cubeSize-50), (height/2.0) / tan(PI*30.0 / 180.0) + cubeSize/2, width/2.0, height/2.0, 0, 0, 1, 0);
  
  sierCube = createShape(GROUP);
  makeSierpinskiCube(width/2, height/2, 0, cubeSize, sierCube);
  shape(sierCube);
  
  colorMode(RGB);
}

public void draw() {
  background(255);
  
  pointLight(255, 255, 255, 200, -200, 200);
  pointLight(255, 255, 255, -200, 200, -200);
  directionalLight(100, 100, 100, -1, 0, -1);
  pointLight(50, 50, 50, 0, 0, -200);
  
  translate(-cubeSize/2, -cubeSize/2, cubeSize/2);
  shape(sierCube);
}

public void mousePressed() {
  xI = mouseX;
}

public void mouseReleased() {
  cX += (xI-mouseX);
}

public void mouseDragged() {
  float r = (height/2.0) / tan(PI*30.0 / 180.0);
  float dX = 2*((xI-mouseX)+cX);
  float mX = cos(dX/r)*r;
  float mZ = sin(dX/r)*r;
  System.out.println();
  camera(width/2.0+cubeSize-mX, height/2.0-(cubeSize-50), mZ, width/2.0, height/2.0, 0, 0, 1, 0);
}
