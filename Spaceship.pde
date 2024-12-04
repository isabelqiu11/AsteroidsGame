class Spaceship extends Floater  
{   
   public Spaceship(){
   corners = 7;  //the number of corners, a triangular floater has 3   
   xCorners = new int[]{0,-7,0,16,0,0,16};   
   yCorners = new int[]{8,0,-8,-1,-1,1,1};
   myColor = color(255);   
   myCenterX = 400;
   myCenterY = 400; //holds center coordinates   
   myXspeed = 0;
   myYspeed = 0; //holds the speed of travel in the x and y directions   
   myPointDirection = 0; //holds current direction the ship is pointing in degrees    
    }
    
    public void setXspeed(double x){
      myXspeed = x;
    }
      public void setYspeed(double y){
      myYspeed = y;
    }
  public void setX(double x){
    myCenterX = x;
  }
  public void setY(double y){
    myCenterY = y;
  }
public double getX(){
   return myCenterX;
}
public double getY(){
   return myCenterY;
}
  public void setDirection(double n){
    myPointDirection = n;
  }
}
