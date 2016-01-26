## Bubble Sort

### Java Data Types

* int - 32bit (4byte) integer value
* short - 16-bit (2byte) integer value
* long - 64bit (8byte) integer value
* byte - 8bit (1byte) integer value
* float - 32bit (4byte) floating point value
* double - 64bit (8 byte) floating point value
* char - 16bit character (unicode)
* boolean - true or false
* String - ...

#### Example
```java
public class BubbleSort {

  public void sort(int[] values) {
    int numArrayLength = values.length;
    int placeholder = 0;
    for (int i = 0; i < numArrayLength; i++) {
      for (int j = 1; j < (numArrayLength - i); j++) {
        // System.out.println(i);
        // System.out.println(j);
        if (values[j - 1] > values[j]) {
          placeholder = values[j - 1];
          values[j - 1] = values[j];
          values[j] = placeholder;
        }
      }
    }
    for (int inc = 0; inc < values.length; inc++) {
      System.out.println(values[inc]);
    }
  }

  public static void main(String[] args) {
    System.out.println("BubbleBobble");
    int mixedPrimes[] = { 23,1,2,19,3,17,5,7,13,11 };

    BubbleSort s = new BubbleSort();
    s.sort(mixedPrimes);
  }

  public int[] totals() {
    int[] itemsTotal = new int[3];
    itemsTotal[0] = 4;
    itemsTotal[1] = 16;
    itemsTotal[2] = 92;
    return itemsTotal;
  }

  public String name() {
    String name = "James";
    return name;
  }
}
```
