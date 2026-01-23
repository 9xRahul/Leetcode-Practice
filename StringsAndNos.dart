void main() {
  List<dynamic> arr = ["Flutter", "28", "2.6", 55, "Dart", "one"];

  List<String> nos = [];
  List<String> str = [];

  for (var item in arr) {
    if (item is num) {
      nos.add(item.toString());
    } else if (item is String && num.tryParse(item) != null) {
      print("${num.tryParse(item)}");
      nos.add(item);
    } else {
      str.add(item);
    }
  }

  print(nos);
  print(str);
}
