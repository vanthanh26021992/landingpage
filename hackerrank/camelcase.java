package hackerrank;

public class camelcase {

  public static void main(String[] args) {
    // TODO Auto-generated method stub
    System.out.println("So tu trong chuoi \"saveChangesInTheEditor\" la: " + camelcase("saveChangesInTheEditor"));
  }
  
  public static int camelcase(String s) {
    int count = 1;
    for (int i = 0; i < s.length(); i++) {
      if(Character.isUpperCase(s.charAt(i))) count++;
    }
    return count;
  }

}
