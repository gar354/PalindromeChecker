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
public boolean palindrome(String word) {
  String reverseWord = reverse(word);
  return onlyLetters(word).equalsIgnoreCase(onlyLetters(reverseWord));
}

public String reverse(String str) {
    String sNew = new String();
    for (int i = 0; i < str.length(); i++) {
      sNew = str.charAt(i) + sNew;
    }
    return sNew;
}

public String onlyLetters(String str) {
  String letterStr = "";
  for (int i = 0; i < str.length(); i++) {
    if (Character.isLetter(str.charAt(i))) {
      letterStr = letterStr + str.charAt(i);
    }
  }
  return letterStr;
}
