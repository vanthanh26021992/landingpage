package hackerrank;

import java.util.ArrayList;

public class MarsExploration {

  public static void main(String[] args) {
    // TODO Auto-generated method stub
    System.out.println(marsExploration("SOSSPSSQSSOR"));
  }

  public static int marsExploration(String s) {
    // Write your code here

//  Kiem tra dieu kien
    if (s == null) {
      return 0;
    }

//Khoi tao
    int len = s.length(), count = 0;
    ArrayList<Character> strList = new ArrayList<>();
    ArrayList<Character> checkList = new ArrayList<>();
    checkList.add('S');
    checkList.add('O');

    for (int i = 0; i < len; i++) {
      strList.add(s.charAt(i));
    }
    for (int i = 0; i < strList.size(); i++) {
      if (i % 3 == 0) {
        if (!strList.get(i).equals(checkList.get(0))) {
          count++;
        }
      }
      if (i % 3 == 1) {
        if (!strList.get(i).equals(checkList.get(1))) {
          count++;
        }
      }
      if (i % 3 == 2) {
        if (!strList.get(i).equals(checkList.get(0))) {
          count++;
        }
      }
    }
    return count;

  }

}

/*
 * truyen chuoi vao arraylist
 * 
 * tao bien dem
 * 
 * kiem tra ky tu chuoi co khac mac dinh
 * 
 * dem++
 * 
 */