class Star //note that this class does NOT extend Floater
{
  protected double myX, myY, mySize;
  protected int myColor;
  public Star(){
  	mySize = Math.random()*5;
  	myX = Math.random()*500;
  	myY = Math.random()*500;
  	myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  public void show(){
  	fill(myColor);
  	ellipse((float)myX, (float)myY, (float)mySize, (float)mySize);
  }
}
