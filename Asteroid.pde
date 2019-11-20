class Asteroid extends Floater{
	private int rotSpeed;
	public Asteroid(){
		rotSpeed = (int)(Math.random()*11)-5;
		myColor = color(169,169,169);
		myCenterX = Math.random()*500;
		myCenterY = Math.random()*500;
		myPointDirection = Math.random()*360;
		myDirectionX = Math.random()*10-5;
		myDirectionY = Math.random()*10-5;
		corners = 9;
		xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = 0;
    	xCorners[1] = 7;
    	xCorners[2] = 9;
    	xCorners[3] = 5;
    	xCorners[4] = 3;
    	xCorners[5] = -1;
    	xCorners[6] = -7;
    	xCorners[7] = -9;
    	xCorners[8] = -4;
    	yCorners[0] = 8;
    	yCorners[1] = 4;
    	yCorners[2] = -4;
    	yCorners[3] = -6;
    	yCorners[4] = -9;
    	yCorners[5] = -10;
    	yCorners[6] = -8;
    	yCorners[7] = 0;
    	yCorners[8] = 4;
	}
	public void move(){
		turn(rotSpeed);
		super.move();
	}
}