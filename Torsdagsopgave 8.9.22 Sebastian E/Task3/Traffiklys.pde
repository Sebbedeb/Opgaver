color backGround = color(0);
int maxHeight = 1000;
int size = 250;
int maxWidth = 1000;
int mid = (maxWidth/2);
color topLight = color(255, 0, 0);
color midLight = color(255, 255, 0);
color botLight = color(0, 255, 0);
float timer =0;




void setup()
{
  ellipseMode(CENTER);
  background (0, 0, 100);
  size(1000, 1000);
  fill(backGround);
  rect(200, 50, 600, 900);
}

void draw()
{
  timer++;
  //The lights themselves
  drawLights();
  println(timer);
}



void colorCheck()
{
  //Red
  if (timer>0 && timer<200)
  {
    topLight=color(255, 0, 0);
    midLight=color(100);
    botLight=color(100);
  }
  //Red+Yellow
  else if (timer>200 && timer<400)
  {
    topLight=color(255, 0, 0);
    midLight=color(255, 255, 0);
    botLight=color(100);
  }
  //Green
  else if (timer>400 && timer <600)
  {
    topLight=color(100);
    midLight=color(100);
    botLight=color(0, 255, 0);
  }
  //Yellow
  else if (timer>600 && timer<800)
  {
    botLight=color(100);
    midLight=color(255, 255, 0);
    topLight=color(100);
  }
  else if (timer >810)
  {
    timer=0;
  }
}

void drawLights()
{
  colorCheck();

  for (int diff=800; diff>0; diff-=300)
  {
    if (diff==800)
    {
      fill(botLight);
    } else if (diff==500)
    {
      fill(midLight);
    } else if (diff==200)
    {
      fill(topLight);
    }

    ellipse(mid, diff, size, size);
  }
}
