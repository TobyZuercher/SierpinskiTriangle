public void makeSierpinskiCube(float x, float y, float len, PShape s) {
  s = createShape(GROUP);
  sierpinskiCube(x, y, len, s);
  shape(s);
}

public void sierpinskiCube(float x, float y, float len, PShape s) {
  if(len <= 10) {
    translate(x, y);
    PShape n = createShape(BOX, len);
    n.setFill(color(255, 0, 0));
    s.addChild(n);
  }
  else {
    translate(x, y);
    PShape n = createShape(BOX, len);
    n.setFill(color(255, 0, 0));
    s.addChild(n);
    translate(-x, -y);
    sierpinskiCube(x, y, len/2, s);
  }
}
