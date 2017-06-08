// java version "1.8.0_51"
// java version "1.8.0_65"
// java version "1.8.0_111"

class compile_java {
  public static void main(String[] args) {
    int summ = 0;
    int a = 0;
    int b = 1;
    int c = 0;

    while (c < 4000000) {
      c = a + b;
      a = b;
      b = c;
      if (c % 2 == 0) {
        summ += c;
      }
    }
    System.out.println(summ);
  }
}
