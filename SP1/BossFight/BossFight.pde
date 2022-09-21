int dice;
int turnCounter;
int rollD20;
int rollD6;
int rollD4;
int bossHealth;
int bossAC;
//state 1 - Your turn
void setup()
{
  size(400, 400);
  background(175);
  Player1 = new Player(40, 16, 4, 1);
  Boss1 = new Boss(100, 12, 1, 1);
}

void draw()
{
  displayBoss(width/2,height/2,100);
  rollD20=int (random(1, 21));
  rollD6=int (random(1, 7));
  rollD4=int (random(1, 5));
}

void mousePressed()
{
}
