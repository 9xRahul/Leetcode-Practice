void main() {
  List<int> names = [
    2,
    3,
    4,
    5,
    6,
    7,
    4,
    3,
    3,
    5,
    6,
    3,
    4,
    23,
    2,
    3,
    4,
    5,
    6,
    43,
  ];
  Map<int, dynamic> count = {};

  for (var name in names) {
    count[name] = (count[name] ?? 0) + 1;
  }

  var sorted = count.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));
  ;

  var op = sorted.take(3);

  for (var item in op) {
    print(" ${item.key} -> ${item.value}");
  }
}
