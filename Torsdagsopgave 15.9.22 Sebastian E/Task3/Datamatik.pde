void setup()
{
  Teacher t1 = new Teacher("Jesper" , 22, false);
  Student s1 = new Student("Sebastian", 25, false, "Hold_A");
  Student s2 = new Student("Frederik", 34, false,"Hold_A");
  println(t1.name);
  println(s1.name,s1.datamatikerTeam);
  println(s2.name,s1.datamatikerTeam);
}
