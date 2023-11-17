ArrayList<Particle> particles;



void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);
  for (int i = 0; i > -particles.size(); i--){
    particles.get(abs(i)).update();
    particles.get(abs(i)).display();
    if (particles.get(abs(i)).position.y >= 400){
      particles.remove((abs(i)));
    }
  }
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}
