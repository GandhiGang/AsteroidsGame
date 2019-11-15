Spaceship epic = new Spaceship();
Star [] gamer = new Star[200];
boolean wIsPressed = false;
boolean aIsPressed = false;
boolean sIsPressed = false;
boolean dIsPressed = false;
boolean spaceIsPressed = false;
public void setup() 
{
  size(500, 500);
  for(int i = 0; i < gamer.length; i++)
  	gamer[i] = new Star();
}
public void draw() 
{
	background(0);
	noStroke();
	for(int i = 0; i < gamer.length; i++)
  		gamer[i].show();
	epic.show();
	epic.move();
	if(wIsPressed)
		epic.accelerate(0.1);
	if(sIsPressed)
		epic.accelerate(-0.1);
	if(aIsPressed)
		epic.turn(-5);
	if(dIsPressed)
		epic.turn(5);
	if(spaceIsPressed)
		epic.hyperspace();
}
public void keyPressed(){
	if(key == 'a')
		aIsPressed = true;
	if(key =='d')
		dIsPressed = true;
	if(key == 'w')
		wIsPressed = true;
	if(key == 's')
		sIsPressed = true;
	if(key == ' ')
		spaceIsPressed = true;
}	
public void keyReleased(){
	if(key == 'a')
		aIsPressed = false;
	if(key =='d')
		dIsPressed = false;
	if(key == 'w')
		wIsPressed = false;
	if(key == 's')
		sIsPressed = false;
	if(key == ' ')
		spaceIsPressed = false;
}	
					

