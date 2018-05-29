class Ball {
int x;
PVector location;  // Location of shape
PVector velocity;  // Velocity of shape
PVector gravity;   // Gravity acts at the shape's acceleration
int count=0;
  Ball() {
  location = new PVector(100,100);
  velocity = new PVector(1.5,2.1);
  gravity = new PVector(0,0.2);
  }
  void display() {
  location.add(velocity);
  velocity.add(gravity);
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if (location.y > height) {
    velocity.y = velocity.y * -0.95; 
    location.y = height;
  }
    fill(255,0,0);
    ellipse(location.x, location.y, 10, 10);
    
    if(location.x > 200 && location.x < 300 && location.y >200 && location.y< 300){
      location.x = 250;
      location.y= 250;
      //velocity.x=(0);
      //velocity.y=(0);
      gravity.x=(0);
      gravity.y=(0);
      println(count++);
  }
 }
}