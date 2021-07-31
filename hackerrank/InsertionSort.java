package hackerrank;

import java.util.ArrayList;
import java.util.List;

public class InsertionSort {

  public static void main(String[] args) {
    // TODO Auto-generated method stub
    ArrayList<Integer> arr = new ArrayList<Integer>();
    arr.add(2);
    arr.add(4);
    arr.add(6);
    arr.add(8);
    arr.add(3);
    InsertionSort(5, arr);
  }

  public static void InsertionSort(int n, List<Integer> arr) {

    Integer[] array = new Integer[arr.size()];
    arr.toArray(array);
    int key, i, j;
    for (i = n - 1; i >= 0; i--) {
      key = array[i];
      j = i - 1;
      while (j >= 0 && array[j] > key) {
        array[j + 1] = array[j];
        j -= 1;
        for (int k = 0; k < n; k++) {
          System.out.print(array[k] + " ");
        }
        System.out.println();
      }
      array[j + 1] = key;
    }
    for (i = 0; i < array.length; i++) {
      System.out.print(array[i] + " ");
    }
  }

}
