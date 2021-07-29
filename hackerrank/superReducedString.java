import java.lang.invoke.SwitchPoint;
import java.util.ArrayList;

public class superReducedString {

  public static void main(String[] args) {
    // TODO Auto-generated method stub
    String s = superReducedString("abba");
    System.out.println("S is : " + s);
    
  }
  
  public static String superReducedString(String s) {
    // Write your code here
    if (s == null) {
      return "Empty String";
    }
    if (s.equals("Empty String")) {
      return "Empty String";
    }
    switch (s.length()) {
    case 0:
      return "Empty String";
    case 1:
      return s;
    default:
//    Khoi tao
      int len = s.length();
      String str1, str2, str3, strt1, strt2, strt3;
      ArrayList<Character> strList = new ArrayList<>();
      ArrayList<Character> tempList = new ArrayList<>();
      ArrayList<Character> finalList = new ArrayList<>();
//    Gan ky tu vao arraylist
      for (int i = 0; i < len; i++) {
        strList.add(s.charAt(i));
      }
      for (int i = 0; i < len; i++) {
//      System.out.println("loop " + i);
//      System.out.println("strList: " + strList);
        if (strList.size() == 0) {
          break;
        } else if (strList.size() == 1) {
          finalList.add(strList.get(0));
          tempList.add(strList.get(0));
//        System.out.println("finalList: " + finalList);
          strList.remove(0);
          break;
        } else {
          tempList.add(strList.get(0));
//        System.out.println("tempList: " + tempList);
          strList.remove(0);
//        System.out.println("strlList 0: " + strList.get(0));

          if (strList.size() == 0) {
            finalList.add(tempList.get(0));
//          System.out.println("finalList: " + finalList);
          } else {
            if (!(strList.get(0).equals(tempList.get(i)))) {
              finalList.add(tempList.get(i));
//            System.out.println("finalList : " + finalList);
            } else {
              strList.remove(0);
            }
          }
        }
//      if(!tempList.isEmpty()) {
//        tempList.remove(0);
//        }
      }
//    System.out.println("tempList final: " + tempList);
//    Gan arrayList vao chuoi 
      String str = String.valueOf(finalList);
      str1 = str.replace("[", "");
      str2 = str1.replace("]", "");
      str3 = str2.replace(", ", "");
      String strt = String.valueOf(tempList);
      strt1 = strt.replace("[", "");
      strt2 = strt1.replace("]", "");
      strt3 = strt2.replace(", ", "");
      int leng = str3.length();

      if (str3.isEmpty()) {
        return "Empty String";
      } else {
        if (str3.equals(strt3)) {

          return str3;
        } else {
//        System.out.println(str3);
//        System.out.println(strt3);
          for (int i = 0; i < 2; i++) {
            str3 = superReducedString(str3);
          }
        }
      }
      return str3;
    }
  }
}
