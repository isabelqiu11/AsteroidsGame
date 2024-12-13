//your variable declarations here
Spaceship bob = new Spaceship();
Star [] jim = new Star[1000];
//int score = 0;
boolean a = false;
ArrayList<Bullet> Bullets = new ArrayList<Bullet>();
ArrayList<Asteroid> Asteroids = new ArrayList<Asteroid>();

public void setup() 
{
  size(800,800);
  for(int i = 0; i < jim.length; i++){
    jim[i] = new Star();
  }
  for(int i = 0; i < 20; i++){
    Asteroids.add(new Asteroid());
  }
}

public void draw() 
{
  background(0);
for (int i = 0; i < Bullets.size(); i++){
 if(Bullets.get(i).getX() > 799 || Bullets.get(i).getX() <1){
   Bullets.remove(i);
   i--;
  }else if (Bullets.get(i).getY() > 799 || Bullets.get(i).getY() < 1){
   Bullets.remove(i);
    i--;
  }
}
  for(int i = 0; i < jim.length; i++){
    jim[i].show();
  }
 for(int j = Asteroids.size()-1; j>=0;j--){
   Asteroids.get(j).show();
   Asteroids.get(j).move();
   float d = dist((float)(bob.getX()),(float)(bob.getY()),(float)(Asteroids.get(j).getX()),(float)(Asteroids.get(j).getY()));
   if(d<20){
     Asteroids.remove(j);
     //score--;
   }
 }
 
 //fill(255);
 //rect(690,730,100,60);
  
 for(int i = 0; i < Bullets.size(); i++){
  for(int j = Asteroids.size()-1; j>=0; j--){
    if(dist((float)(Bullets.get(i).getX()), ((float)Bullets.get(i).getY()), (float)(Asteroids.get(j).getX()),(float)(Asteroids.get(j).getY())) <18){
      Asteroids.remove(j);
      Bullets.remove(i);
      i--;
      break;
    }
  }
}
if(a  = true){
 for(int j = 0; j < Bullets.size(); j++){
   Bullets.get(j).show();
   Bullets.get(j).move();
  
 }

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
  
 if(key == 'e' || key == 'E'){
   //Bullets.add(new Bullet(bob));
    a = true;
 }
}
}

public void keyReleased(){
  if(key =='e'){
  a = false;
}

}
