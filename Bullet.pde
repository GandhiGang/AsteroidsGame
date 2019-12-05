class Bullet extends Floater {
	public Bullet(Spaceship theShip){
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();
		myPointDirection = theShip.getPoint();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5 * Math.cos(dRadians) + theShip.getSpeedX();
		myDirectionY = 5 * Math.sin(dRadians) + theShip.getSpeedY();	
	}
	public void show(){
		noStroke();
		fill(255, 0, 0);
		ellipse((float)myCenterX, (float)myCenterY, 5, 5);	
	}
	public double getX(){
		return myCenterX;
	}
	public double getY(){
		return myCenterY;
	}
}