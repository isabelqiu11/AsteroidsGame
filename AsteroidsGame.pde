//your variable declarations here
Spaceship bob = new Spaceship();
Star [] jim = new Star[1000];
public void setup() 
{
  size(800,800);
  for(int i = 0; i < jim.length; i++){
    jim[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < jim.length; i++){
    jim[i].show();
  }
  bob.show();
  bob.move();
  
}
public void keyPressed(){

  //hyperspace
    if(key == 's'|| key == 'S'){
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setX(Math.random()*800);
    bob.setY(Math.random()*800);
    bob.setDirection(Math.random()*360);
  }

  if(keyPressed){
  if(key == 'w' || key == 'W'){
 bob.accelerate(2.0); //accelerate
  }
  
  if(key == 'a'|| key == 'A'){
    bob.turn(-10); //turn left
  }
  
  if(key == 'd'|| key == 'D'){
    bob.turn(10);  //turn right
  }
}

  //bob.show();
  //bob.move();
  
  //point direction can be different than moving direction
}
