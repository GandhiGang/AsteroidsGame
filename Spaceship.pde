class Spaceship extends Floater  
{   
    public Spaceship(){
    	myDirectionX=myDirectionY=myPointDirection=0;
    	myColor=255;
    	myCenterX=myCenterY=250;
    	corners = 12;
    	xCorners = new int[]{8, -9, -11, -3, -6, -5, -8, -5, -6, -3, -11, -9};
    	yCorners = new int[]{0, -17, -15, -7, -4, -3, 0, 3, 4, 7, 15, 17};
    }

    public void hyperspace(){
    	myDirectionX=myDirectionY=0;
    	myCenterX = Math.random()*500;
    	myCenterY = Math.random()*500;
    	myPointDirection = Math.random()*360;
    }
    public void show ()  //Draws the floater at the current position  
    {             
    fill(myColor);   
    stroke(myColor);    
    strokeWeight(3);
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    if(wIsPressed){
    stroke(255, 140, 0);
    line(-12, 0, -18, 0);
    line(-12, -6, -16, -9);
    line(-12, 6, -16, 9);
	}
	if(sIsPressed){
    stroke(64, 64, 255);
    line(-12, 0, -18, 0);
    line(-12, -6, -16, -9);
    line(-12, 6, -16, 9);
	}
    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
    }
    public double getX(){
    	return myCenterX;
    }
    public double getY(){
    	return myCenterY;
    }
    public double getPoint(){
    	return myPointDirection;
    }
    public double getSpeedX(){
    	return myDirectionX;	
    }
    public double getSpeedY(){
    	return myDirectionY;
    }
}

