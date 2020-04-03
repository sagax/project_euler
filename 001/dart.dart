// Dart VM version: 2.0.0 (Fri Aug 3 10:53:23 2018 +0200) on "linux_ia32"
// Dart VM version: 2.2.0 (Tue Feb 26 15:04:32 2019 +0100) on "linux_ia32"

import 'dart:io';

void main() {
  int summ = 0;
  for (int i = 0; i < 1000; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      summ += i;
    }
  }
  stdout.write(summ);
}
