class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  float color1 = random(0, 255);
  float color2 = random(0, 255);
  float color3 = random(0, 255);
  
  
  Particle(float x, float y){
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  void display(){
    fill(color1, color2, color3);
    ellipse(position.x, position.y, 10, 10);
  }
}
