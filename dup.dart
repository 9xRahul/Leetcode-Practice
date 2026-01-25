void main() {
  List<int> arr = [1, 2, 2, 6, 6, 7, 8, 9, 9, 1,34];

  Map<int, int> c = {};

  for (var num in arr) {
    c[num] = (c[num] ?? 0) + 1;
  }
  List<int> op = [];
  for (var entry in c.entries) {
    if (entry.value > 1) {
      op.add(entry.key);
    }
  }

  print(op);
}
