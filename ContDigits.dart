void main() {
  Map<int, int> count = {};

  List<int> nums = [12, 4, 545, 67, 8, 94, 999, 330];

  for (int item in nums) {
    int n = item;

    while (n != 0) {
      int rem = n % 10;
      count[rem] = (count[rem] ?? 0) + 1;
      n = n ~/ 10;
    }
  }

  var sorted = count.entries.toList()..sort((a, b) => a.key.compareTo(b.key));

  for (var item in sorted) {
    print("${item.key} -> ${item.value}");
  }
}
