 public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String news = new String();
  for (int i = 0; i < word.length(); i++) {
    if (Character.isLetter(word.charAt(i))) news += word.charAt(i);
  }
  return reverse(news).equals(news);
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = 0; i < str.length(); i++) {
      sNew += str.charAt(i);
    }
    return sNew;
}


