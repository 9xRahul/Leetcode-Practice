void main() {
  int x = 1234;

  String y = x.toString();
  String z = "";

  for (int i = y.length; i > 0; i--) {
    z += y[i - 1];
  }

  int d = int.parse(z);
  print(d);
}
