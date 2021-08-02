package hackerrank;

import java.io.ObjectInputStream.GetField;
import java.util.ArrayList;
import java.util.Iterator;

public class TwoCharacters {

  public static void main(String[] args) {
    // TODO Auto-generated method stub
    System.out.println("Final Result: " + alternate("beabeefeab"));
  }

  public static int alternate(String s) {

//    Khai báo
    ArrayList<Character> sList = new ArrayList<>();
    ArrayList<Character> cList = new ArrayList<>();
    int max = 0, len = 0;

    if (s == null) {
      return 0;
    } else {
//    Truyền chuỗi vào List
      for (int i = 0; i < s.length(); i++) {
        sList.add(s.charAt(i));
        cList.add(s.charAt(i));
      }


//      Lấy ra các duy nhất các ký tự của chuỗi
      for (int i = 0; i < cList.size(); i++) {
        for (int j = i + 1; j < cList.size(); j++) {
          if (cList.get(i).equals(cList.get(j))) {
            cList.remove(j);
            j--; // giảm j xuống để không bỏ sót ký tự
          }
        }
      }
      for (int i = 0; i < cList.size(); i++) {
        for (int j = i + 1; j < cList.size(); j++) {
          boolean check = true;
          ArrayList<Character> tempList = new ArrayList<>(); // Tao list tam
          for (Character character : sList) {
            tempList.add(character); // Gan cac gia tri sList vao tempList
          }
          for (int k = 0; k < tempList.size(); k++) {
            if (!(tempList.get(k) == cList.get(i))) {
              if (!(tempList.get(k) == cList.get(j))) {
                tempList.remove(k);
                if (k >= 0) {
                  k--;
                }
              }
            }
          }
          for (int k = 0; k < tempList.size() - 1; k++) {
            if (tempList.get(k) == tempList.get(k + 1)) {
              check = false;
              break;
            }
          }
          if (check == true) {
            len = tempList.size();
          }
          if (max < len) {
            max = len;
          }
        }
      }
    }
    return max;

  }
}
