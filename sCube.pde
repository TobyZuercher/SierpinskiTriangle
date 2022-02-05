public void makeSierpinskiCube(float x, float y, float len, PShape s) {
  //s = createShape(GROUP);
  sierpinskiCube(x, y, len, s);
  //shape(s);
  System.out.println(s.getChildCount());
}

public void sierpinskiCube(float x, float y, float len, PShape s) {
  translate(x, y);
  PShape n = createShape(BOX, len);
  n.setFill(color(len*5, 0, 0));
  s.addChild(n);
  PShape n2 = posCube(len/2, len/2, -len/2, len/2);
  s.addChild(n2);
  /*if(len <= 10) {
    translate(x, y);
    PShape n = createShape(BOX, len);
    n.setFill(color(len*5, 0, 0));
    s.addChild(n);
  }
  else {
    translate(x, y);
    PShape n = createShape(BOX, len);
    n.setFill(color(len*5, 0, 0));
    s.addChild(n);
    translate(-x, -y);
    sierpinskiCube(x, y, len/2, s); //might be adding all shapes as name 'n', use array to fix to display multiple
  }*/
} 

public PShape posCube(float x, float y, float z, float len) {
  PShape sC = createShape(GROUP);
  PShape s1, s2, s3, s4, s5, s6;
  //---------------------------------------- front side:
  s1 = createShape();
  s1.beginShape();
  s1.vertex(x, y, z);
  s1.vertex(x+len, y, z);
  s1.vertex(x+len, y+len, z);
  s1.vertex(x, y+len, z);
  s1.endShape(CLOSE);
  s1.setFill(color(len*2.5, 0, 0));
  //---------------------------------------- top side:
  s2 = createShape();
  s2.beginShape();
  s2.vertex(x, y, z);
  s2.vertex(x+len, y, z);
  s2.vertex(x+len, y, z-len);
  s2.vertex(x, y, z-len);
  s2.endShape(CLOSE);
  s2.setFill(color(len*2.5, 0, 0));
  //---------------------------------------- back side:
  s3 = createShape();
  s3.beginShape();
  s3.vertex(x, y, z-len);
  s3.vertex(x+len, y, z-len);
  s3.vertex(x+len, y+len, z-len);
  s3.vertex(x, y+len, z-len);
  s3.endShape(CLOSE);
  s3.setFill(color(len*2.5, 0, 0));
  //---------------------------------------- bottom side:
  s4 = createShape();
  s4.beginShape();
  s4.vertex(x, y+len, z);
  s4.vertex(x+len, y+len, z);
  s4.vertex(x+len, y+len, z-len);
  s4.vertex(x, y+len, z-len);
  s4.endShape(CLOSE);
  s4.setFill(color(len*2.5, 0, 0));
  //---------------------------------------- left side:
  s5 = createShape();
  s5.beginShape();
  s5.vertex(x, y, z);
  s5.vertex(x, y, z-len);
  s5.vertex(x, y+len, z-len);
  s5.vertex(x, y+len, z);
  s5.endShape(CLOSE);
  s5.setFill(color(len*2.5, 0, 0));
  //---------------------------------------- right side:
  s6 = createShape();
  s6.beginShape();
  s6.vertex(x+len, y, z);
  s6.vertex(x+len, y, z-len);
  s6.vertex(x+len, y+len, z-len);
  s6.vertex(x+len, y+len, z);
  s6.endShape(CLOSE);
  s6.setFill(color(len*2.5, 0, 0));
  //---------------------------------------- add to final shape:
  sC.addChild(s1);
  sC.addChild(s2);
  sC.addChild(s3);
  sC.addChild(s4);
  sC.addChild(s5);
  sC.addChild(s6);
  return sC;
}
