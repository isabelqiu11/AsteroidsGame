class Asteroid extends Floater{
  private double rotationSpeed;
  public Asteroid(){
    corners = 11;
    xCorners = new int[] {25,13,-7,-11,-23,-19,-24,-21,-9,11,16};
    yCorners = new int [] {5,19,13,16,19,9,-10,-15,-11,-11,-7};
    myColor = color(155,147,147);
    myCenterX = Math.random()*800;
    myCenterY = Math.random()*800;

if(Math.random() < 0.5){ 
  myXspeed = (Math.random()*2)+1;
  myYspeed  = (Math.random()*2)+1;
}else{ //making sure no zero & stationery asteroids
myXspeed = (Math.random()*2)-3;
myYspeed = (Math.random()*2)-3;
}
  
    myPointDirection = (Math.random()*360);
    rotationSpeed = (Math.random()*7)-3;
  }
  public void move(){
    turn(rotationSpeed);
    super.move();
  }
  public double getX (){
    return myCenterX;
  }
  public double getY(){
    return myCenterY; 
  }
}

