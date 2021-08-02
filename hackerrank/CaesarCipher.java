package hackerrank;

import java.util.ArrayList;

public class CaesarCipher {

  public static void main(String[] args) {
    // TODO Auto-generated method stub
    System.out.println("encode: " + caesarCipher("middle-Outz", 2));

  }

  public static String caesarCipher(String s, int k) {
    
//    Kiem tra dieu kien
    if (s == null) {
      return null;
    }
    if (k > 26) {
      k = k % 26;
    }

//    Khoi tao
    int len = s.length();
    ArrayList<Character> strList = new ArrayList<>();
    ArrayList<Character> finalList = new ArrayList<>();
    char[] strArr = s.toCharArray();
    String lower_case = "abcdefghijklmnopqrstuvwxyz";
    String upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    String finalStr = "";
    char[] lowerArr_case = lower_case.toCharArray();
    char[] upperArr_case = upper_case.toCharArray();

    for (int i = 0; i < len; i++) {
      strList.add(s.charAt(i));
    }
    for (char c : strArr) {
      int low = lower_case.indexOf(c), up = upper_case.indexOf(c);
      if (low != -1 || up != -1) {
        if (low != -1) {
          if (low <= 26 - k) {
            c = lowerArr_case[low + k];
            finalList.add(c);
          } else {
            c = lowerArr_case[k - 26 + low];
            finalList.add(c);
          }
        }
        if (up != -1) {
          if (up <= 26 - k) {
            c = upperArr_case[up + k];
            finalList.add(c);
          } else {
            c = upperArr_case[k - 26 + up];
            finalList.add(c);
          }
        }
      }
      else {
        finalList.add(c);
      }
    }
    for (char c : finalList) {
      finalStr += c;
    }
    return finalStr;
    
    
  }

}

// 24 -> 1, 3, 26      3 - 