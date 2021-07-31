package hackerrank;

import java.util.ArrayList;
import java.util.List;

public class IntroTutorial {

  public static void main(String[] args) {
    // TODO Auto-generated method stub
    int V = 7;
    ArrayList<Integer> arr = new ArrayList<>();
    arr.add(1);
    arr.add(2);
    arr.add(4);
    arr.add(7);
    arr.add(9);
    int position = introTutorial(V, arr);
    System.out.println(position);
  }

  public static int introTutorial(int V, List<Integer> arr) {
    int p = 0;
    for (int i = 0; i < arr.size(); i++) {
      if (arr.get(i) == V) {
        p = i;
      }
    }
    return p;
  }
}
