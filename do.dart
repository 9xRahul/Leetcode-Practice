void main() {
  List<dynamic> lst = [1, "2", "db", 34, "gh", 67, "2.4", 67.5];

  List<String> n = [];
  List<String> c = [];

  for (var v in lst) {
    if (v is num) {
      n.add(v.toString());
    } else {
      if (v is String && num.tryParse(v) != null) {
        n.add(v);
      } else {
        c.add(v);
      }
    }
  }

  print(c);
  print(n);
}
