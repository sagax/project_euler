// java version "1.8.0_51"
// java version "1.8.0_65"
// java version "1.8.0_111"
// java version "1.8.0_221"

class compile_java {
  public static void main(String[] args) {
    int summ = 0;
    for (int item = 0; item < 1000; item++) {
      if (item % 3 == 0 || item % 5 == 0) {
        summ += item;
      }
    }
    System.out.printf("%d", summ);
  }
}
