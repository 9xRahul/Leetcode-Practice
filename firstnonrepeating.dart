void main() {
  List<int> list = [1, 2, 4, 5, 6, 7, 3, 2, 1, 23, 4, 56, 7, 8, 9, 5, 23, 3, 2];

  Map<int, int> items = {};

  for (var item in list) {
    items[item] = (items[item] ?? 0) + 1;
  }

  for (var item in items.entries) {
    if (item.value == 1) {
      print("non repeating ${item.key}");
      break;
    }
  }
}
