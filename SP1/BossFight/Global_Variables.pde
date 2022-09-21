
class Player
{
  int playerHealth;
  int playerAC;
  int playerChanceToHit;
  int playerDamage;
  
  Player(int tempPlayerHealth, int tempPlayerAC, int tempPlayerChanceToHit, int tempPlayerDamage)
  {
    int playerHealth=tempPlayerHealth;
    int playerAC=tempPlayerAC;
    int playerChanceToHit=tempPlayerChanceToHit;
    int playerDamage=tempPlayerDamage;
  }



  void playerAttack()
  {
    int rolled=rollD20+playerChanceToHit;
    if (rolled>bossAC && rollD20!=20)
    {
      println("Nice, you rolled "+rolled+".");
      int damage = rollD6+playerDamage;
      bossHealth=bossHealth-damage;
      println("Good strike! You dealt "+damage+" damage. The boss has "+bossHealth+" life left");
      for (int frame=0; frame<120; frame++)
      {
        strokeWeight(10);
        stroke(255, 0, 0);
        line(width*0.25, height*0.25, width*0.75, height*0.75);
        line(width*0.25, height*0.75, width*0.75, height*0.25);
      }
      strokeWeight(10);
      fill(175);
      stroke(175);
      line(width*0.25, height*0.25, width*0.75, height*0.75);
      line(width*0.25, height*0.75, width*0.75, height*0.25);
      rolled=0;
      damage=0;
    } else if (rollD20==20)
    {
      println("CRIT!");
      int damage = (rollD6*2)+playerDamage;
      bossHealth=bossHealth-damage;
      println("You strike the boss with a fury never before seen! You dealt "+damage+" damage. The boss has "+bossHealth+" life left.");

      rolled=0;
      damage=0;
    } else
    {
      println("Arw, you missed! You rolled "+rolled+".");
      rollD20=0;
      rolled=0;
    }
    turnCounter+=1;
  }
}
