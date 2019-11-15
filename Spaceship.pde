class Spaceship extends Floater  
{   
    public Spaceship(){
    	myDirectionX=myDirectionY=myPointDirection=myColor=0;
    	myCenterX=myCenterY=250;
    	corners = 12;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = 8;
    	xCorners[1] = -9;
    	xCorners[2] = -11;
    	xCorners[3] = -3;
    	xCorners[4] = -6;
    	xCorners[5] = -5;
    	xCorners[6] = -8;
    	xCorners[7] = -5;
    	xCorners[8] = -6;
    	xCorners[9] = -3;
    	xCorners[10] = -11;
    	xCorners[11] = -9;
    	yCorners[0] = 0;
    	yCorners[1] = -17;
    	yCorners[2] = -15;
    	yCorners[3] = -7;
    	yCorners[4] = -4;
    	yCorners[5] = -3;
    	yCorners[6] = 0;
    	yCorners[7] = 3;
    	yCorners[8] = 4;
    	yCorners[9] = 7;
    	yCorners[10] = 15;
    	yCorners[11] = 17;
    }

    public void hyperspace(){
    	myDirectionX=myDirectionY=0;
    	myCenterX = Math.random()*500;
    	myCenterY = Math.random()*500;
    }
    public void show ()  //Draws the floater at the current position  
    {             
    fill(myColor);   
    stroke(myColor);    
    
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

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
    }
}
