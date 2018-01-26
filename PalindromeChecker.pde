public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String str)
{String hi =letter(str);
  if(hi.equals(reverse(hi))==true)
  return true;
  return false;
}
public String letter(String str)
{String s= new String();
  for(int i=str.length()-1;i>-1;i--)
  if(Character.isLetter(str.charAt(i))==true)
  s=s+str.charAt(i);
  return s.toLowerCase();
}
public String reverse(String str)
{ String sNew = new String();
  for(int i=str.length()-1;i>-1;i--)
    sNew=sNew+str.charAt(i);
    return sNew.toLowerCase();
}