public void makeSierpinskiCube(float x, float y, float z, float len, PShape s) {
  sierpinskiCube(x, y, z, len, s);
  System.out.println(s.getChildCount());
}

public void sierpinskiCube(float x, float y, float z, float len, PShape s) {
  translate(x, y);
  if(len <= 25) {
    s.addChild(finalCube(x, y, z, len));
  }
  else {
    fract(x, y, z, len, s);
  }
} 

public PShape posCube(float x, float y, float z, float len) {
  PShape sC = createShape(GROUP);
  System.out.println(x);
  PShape s1, s2, s3, s4, s5, s6;
  noStroke();
  color col = color(x/2, 100, 100);
  //---------------------------------------- front side:
  s1 = createShape(PShape.GEOMETRY);  
  s1.beginShape();
  s1.vertex(x, y, z);
  s1.vertex(x+len, y, z);
  s1.vertex(x+len, y+len, z);
  s1.vertex(x, y+len, z);
  s1.endShape(CLOSE);
  s1.setFill(col);
  //---------------------------------------- top side:
  s2 = createShape(PShape.GEOMETRY);
  s2.beginShape();
  s2.vertex(x, y, z);
  s2.vertex(x+len, y, z);
  s2.vertex(x+len, y, z-len);
  s2.vertex(x, y, z-len);
  s2.endShape(CLOSE);
  s2.setFill(col);
  //---------------------------------------- back side:
  s3 = createShape(PShape.GEOMETRY);
  s3.beginShape();
  s3.vertex(x, y, z-len);
  s3.vertex(x+len, y, z-len);
  s3.vertex(x+len, y+len, z-len);
  s3.vertex(x, y+len, z-len);
  s3.endShape(CLOSE);
  s3.setFill(col);
  //---------------------------------------- bottom side:
  s4 = createShape(PShape.GEOMETRY);
  s4.beginShape();
  s4.vertex(x, y+len, z);
  s4.vertex(x+len, y+len, z);
  s4.vertex(x+len, y+len, z-len);
  s4.vertex(x, y+len, z-len);
  s4.endShape(CLOSE);
  s4.setFill(col);
  //---------------------------------------- left side:
  s5 = createShape(PShape.GEOMETRY);
  s5.beginShape();
  s5.vertex(x, y, z);
  s5.vertex(x, y, z-len);
  s5.vertex(x, y+len, z-len);
  s5.vertex(x, y+len, z);
  s5.endShape(CLOSE);
  s5.setFill(col);
  //---------------------------------------- right side:
  s6 = createShape(PShape.GEOMETRY);
  s6.beginShape();
  s6.vertex(x+len, y, z);
  s6.vertex(x+len, y, z-len);
  s6.vertex(x+len, y+len, z-len);
  s6.vertex(x+len, y+len, z);
  s6.endShape(CLOSE);
  s6.setFill(col);
  //---------------------------------------- add to final shape:
  sC.addChild(s1);
  sC.addChild(s2);
  sC.addChild(s3);
  sC.addChild(s4);
  sC.addChild(s5);
  sC.addChild(s6);
  return sC;
}

public PShape finalCube(float x, float y, float z, float len) {
  PShape f = createShape(GROUP);
  float l = len/3;
  //---------------------------------------- front face:
  f.addChild(posCube(x, y, z, l));
  f.addChild(posCube(x+l, y, z, l));
  f.addChild(posCube(x+l+l, y, z, l));
  
  f.addChild(posCube(x, y+l, z, l));
  f.addChild(posCube(x+l+l, y+l, z, l));
  
  f.addChild(posCube(x, y+l+l, z, l));
  f.addChild(posCube(x+l, y+l+l, z, l));
  f.addChild(posCube(x+l+l, y+l+l, z, l));
  
  //---------------------------------------- middle:
  f.addChild(posCube(x, y, z-l, l));
  
  f.addChild(posCube(x+l+l, y, z-l, l));
  
  f.addChild(posCube(x, y+l+l, z-l, l));
  
  f.addChild(posCube(x+l+l, y+l+l, z-l, l));
  
  //---------------------------------------- back face:
  f.addChild(posCube(x, y, z-l-l, l));
  f.addChild(posCube(x+l, y, z-l-l, l));
  f.addChild(posCube(x+l+l, y, z-l-l, l));
  
  f.addChild(posCube(x, y+l, z-l-l, l));
  f.addChild(posCube(x+l+l, y+l, z-l-l, l));
  
  f.addChild(posCube(x, y+l+l, z-l-l, l));
  f.addChild(posCube(x+l, y+l+l, z-l-l, l));
  f.addChild(posCube(x+l+l, y+l+l, z-l-l, l));
  return f;
}

public void fract(float x, float y, float z, float len, PShape s) {
  float l = len/3;
  //---------------------------------------- front face:
  sierpinskiCube(x, y, z, l, s);
  sierpinskiCube(x+l, y, z, l, s);
  sierpinskiCube(x+l+l, y, z, l, s);
  
  sierpinskiCube(x, y+l, z, l, s);
  sierpinskiCube(x+l+l, y+l, z, l, s);
  
  sierpinskiCube(x, y+l+l, z, l, s);
  sierpinskiCube(x+l, y+l+l, z, l, s);
  sierpinskiCube(x+l+l, y+l+l, z, l, s);
  
  //---------------------------------------- middle:
  sierpinskiCube(x, y, z-l, l, s);
  
  sierpinskiCube(x+l+l, y, z-l, l, s);
  
  sierpinskiCube(x, y+l+l, z-l, l, s);
  
  sierpinskiCube(x+l+l, y+l+l, z-l, l, s);
  
  //---------------------------------------- back face:
  sierpinskiCube(x, y, z-l-l, l, s);
  sierpinskiCube(x+l, y, z-l-l, l, s);
  sierpinskiCube(x+l+l, y, z-l-l, l, s);
  
  sierpinskiCube(x, y+l, z-l-l, l, s);
  sierpinskiCube(x+l+l, y+l, z-l-l, l, s);
  
  sierpinskiCube(x, y+l+l, z-l-l, l, s);
  sierpinskiCube(x+l, y+l+l, z-l-l, l, s);
  sierpinskiCube(x+l+l, y+l+l, z-l-l, l, s);
}
