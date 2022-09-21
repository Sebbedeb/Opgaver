class Boss
{
  int bossHealth;
  int bossAC;
  int bossChanceToHit;
  int bossDamage;
  int bossX;
  int bossY;
  
  Boss(int tempBossHealth, int tempBossAC, int tempBossChanceToHit, int tempBossDamage)
  {
    int bossHealth=tempBossHealth;
    int bossAC=tempBossAC;
    int bossChanceToHit=tempBossChanceToHit;
    int bossDamage=tempBossDamage;
  }


  void bossAttack()
  {
    int rolled=rollD20+bossChanceToHit;
    if (rolled>playerAC && rollD20!=20)
    {
      println("Nice, you rolled "+rolled+".");
      int damage = rollD4+bossDamage;
      playerHealth=playerHealth-damage;
      println("Oof, the boss did "+damage+" damage. You have "+playerHealth+" life left");
      rolled=0;
      damage=0;
    } else if (rollD20==20)
    {
      println("OH NO, THE MONSTER GOT A CRIT!");
      int damage = (rollD4*2)+bossDamage;
      playerHealth=playerHealth-damage;
      println("You feel the full strength of the beast, as it deals "+damage+" damage. You have "+playerHealth+" life left.");
      rolled=0;
      damage=0;
    } else
    {
      println("Phew, you managed to dodge!");
      rollD20=0;
      rolled=0;
    }
    turnCounter+=1;
  }
}

void displayBoss(int bossX, int bossY, int size)
{
  line((bossX),bossY,(bossX+size),bossY-size);
  line((bossX),bossY,(bossX-size),bossY-size);
  line(bossX,bossY+size*0.5,bossX+size/2, bossY+size*1.25);
  line(bossX,bossY+size*0.5,bossX-size/2, bossY+size*1.25);
  ellipse(bossX,bossY,size,size*2);
  ellipse(bossX,height-bossY-size,size/2,size/2);
}
