class boxes {
  float x, y, size;

  boxes() {
    x=random(50, width-50);
    y=random(50, height-50);
    size=random(20, 50);
  }


  void actshow() {
    pushMatrix();
    translate(x, y);
    rotateX(r);
    rotateY(r);
    strokeWeight(1);
    stroke(random(255), random(255), random(255));
    noFill();
    box(50);

    r=r+0.0005;
    z=z+1;
    popMatrix();
  }
}
