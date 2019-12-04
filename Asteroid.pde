class Asteroid extends Floater{
	private int rotSpeed;
	public Asteroid(){
		rotSpeed = (int)(Math.random()*11)-5;
		myColor = color(169,169,169);
		myCenterX = Math.random()*500;
		myCenterY = Math.random()*500;
		myPointDirection = Math.random()*360;
		myDirectionX = Math.random()*6-3;
		myDirectionY = Math.random()*6-3;
		corners = 9;
		xCorners = new int[]{0, 7, 9, 5, 3, -1, -7, -9, -4};
    	yCorners = new int[]{8, 4, -4, -6, -9, -10, -8, 0, 4};
	}
	public void move(){
		turn(rotSpeed);
		super.move();
	}
    public double getX(){
        return myCenterX;
    }
    public double getY(){
        return myCenterY;
    }
}