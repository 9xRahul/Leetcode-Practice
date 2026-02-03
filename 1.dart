import 'dart:io';

void main() {
  int n = 5;

  for (int i = n; i >= 1; i--) {
    for (int j = i; j >= 1; j--) {
      if (j != 1) {
        stdout.write('$j-');
      } else {
        stdout.write('$j');
      }
    }
    stdout.writeln(); // move to next line
  }
}
