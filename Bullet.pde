class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(6.0);
  }
  public void show(){
    fill(255);
    ellipse((float)myCenterX,(float)myCenterY,6,6);
  }
  
   public double getX (){
    return myCenterX;
  }
  public double getY(){
    return myCenterY; 
  }
public double getYspeed(){
    return myYspeed; 
  }
public double getXspeed(){
    return myXspeed; 
  }
public double getPointDirection(){
    return myPointDirection; 
  }
}
