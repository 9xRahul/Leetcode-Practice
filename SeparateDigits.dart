void main() {
  List<int> arr = [13, 25, 83, 77];

  List<int> op = [];

  for (int i = 0; i < arr.length; i++) {
    int rem = 0;
    double temp = 0;

    int n = arr[i];
    while (n != 0) {
      rem = n % 10;
      op.add(rem);
      n = n - rem ~/ 10;
    }
  }

  print(op);
}
