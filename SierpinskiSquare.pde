public void makeSierpinskiSquare(int x, int y, int len) {
  sierpinskiSquare(x, y, len);
}

public void sierpinskiSquare(float x, float y, float len) 
{
  float l=len/3;
  if(len <= 1) {
    rect(x+l, y+l, l, l);
  }
  else {
    rect(x+l, y+l, l, l);
    sierpinskiSquare(x, y, l);
    sierpinskiSquare(x+l, y, l);
    sierpinskiSquare(x+2*l, y, l);
    sierpinskiSquare(x, y+l, l);
    sierpinskiSquare(x+2*l, y+l, l);
    sierpinskiSquare(x, y+2*l, l);
    sierpinskiSquare(x+l, y+2*l, l);
    sierpinskiSquare(x+2*l, y+2*l, l);
  }
}
