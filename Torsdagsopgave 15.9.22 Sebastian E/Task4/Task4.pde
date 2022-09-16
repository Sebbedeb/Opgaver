int[] intArray = { 42, 69, 420, 1337 };
String[] stringArray={"Waddup" , "sku'" , "det" , "være" , "en" , "hoddog"};
boolean[] booleanArray = new boolean [3];

void setup()
{
  printStrings();
  println(printIntSum());
  println(printIntAvg()+" avg");
  
}

void printStrings()
{
  for (int i=0; i<(stringArray.length);i++)
  println(stringArray[i]);
}

int printIntSum()
{
  int totalInt=0;
  for(int i = 0; i<intArray.length;i++)
  {
    totalInt+= intArray[i];
  }
  return totalInt;
}

float printIntAvg()
{
  float intAvg;
  intAvg=(printIntSum()/intArray.length);
  return intAvg;
}
