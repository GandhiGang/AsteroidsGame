Spaceship epic = new Spaceship();
Star [] gamer = new Star[200];
ArrayList <Asteroid> balls = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
boolean wIsPressed = false;
boolean aIsPressed = false;
boolean sIsPressed = false;
boolean dIsPressed = false;
boolean hIsPressed = false;
boolean spaceIsPressed = false;
public void setup() 
{
  size(500, 500);
  for(int i = 0; i < gamer.length; i++)
  	gamer[i] = new Star();
  for(int i = 0; i < 20; i++)
  	balls.add(new Asteroid());	
}
public void draw() 
{
	background(0);
	noStroke();
	for(int i = 0; i < gamer.length; i++)
  		gamer[i].show();
  	for(int i = 0; i < balls.size(); i++){
  		balls.get(i).move();
  		balls.get(i).show();
  		if(dist((float)epic.getX(), (float)epic.getY(), (float)balls.get(i).getX(), (float)balls.get(i).getY()) < 20){
  			balls.remove(i);
  			i--;
  		}	
  	}	
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
	if(hIsPressed)
		epic.hyperspace();
	if(spaceIsPressed)
		shots.add(new Bullet(epic));
	for(int i = 0; i < shots.size(); i++){
		shots.get(i).show();
		shots.get(i).move();
	}

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
	if(key == 'h')
		hIsPressed = true;
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
	if(key == 'h')
		hIsPressed = false;
	if(key == ' ')
		spaceIsPressed = false;
}	
					

