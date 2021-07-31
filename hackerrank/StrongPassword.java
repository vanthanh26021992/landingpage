package hackerrank;

public class StrongPassword {

  public static void main(String[] args) {
    // TODO Auto-generated method stub
    System.out.println(minimumNumber(3, "Ab1"));
    /*
     * addmin = 3 addchar = 1
     */
  }

  public static int minimumNumber(int n, String password) {

    int addmin = 6 - n, num = 0, lower = 0, upper = 0, spec = 0, addchar = 0, add = 0;
    char[] passwordArr = password.toCharArray();
    String numbers = "0123456789";
    String lower_case = "abcdefghijklmnopqrstuvwxyz";
    String upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    String special_characters = "!@#$%^&*()-+";

    for (char i : passwordArr) {
      if (numbers.indexOf(i) != -1) {
        num = 1;
      }
      if (lower_case.indexOf(i) != -1) {
        lower = 1;
      }
      if (upper_case.indexOf(i) != -1) {
        upper = 1;
      }
      if (special_characters.indexOf(i) != -1) {
        spec = 1;
      }
    }
    if (num == 0) {
      addchar++;
    }
    if (lower == 0) {
      addchar++;
    }
    if (upper == 0) {
      addchar++;
    }
    if (spec == 0) {
      addchar++;
    }
    if (addmin > 0) {
      if (addmin > addchar) {
        add = addmin;
      } else {
        add = addchar;
      }
    } else {
      add = addchar;
    }
    return add;

  }
}
