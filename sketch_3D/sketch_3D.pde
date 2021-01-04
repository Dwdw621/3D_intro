float rotx, roty, zoom;

void setup() {
  size(800, 800, P3D);
}

void draw() {
  background(200);

  cube(width/2, height/2, 50, #FF0000, 100);
  cube(width/2 + 150, height/2 + 100, 50, #FF0000, 100);
  ball(width/2, height/2 - 200, 50, #0000FF, 100);
}

void cube(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);
  rotateX(rotx);
  rotateY(roty);

  fill(c);
  strokeWeight(2);
  box(size);  //W H D
  popMatrix();
}

void ball(float x, float y, float z, color c, float radius) {
  pushMatrix();
  translate(x, y, z);
  rotateX(rotx);
  rotateY(roty);

  fill(c);
  strokeWeight(2);
  sphere(radius);
  popMatrix();
}


void mouseDragged() {
  rotx = rotx + (pmouseY - mouseY)*0.01;
  roty = roty - (pmouseX - mouseX)*0.01;
}
