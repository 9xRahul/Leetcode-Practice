void main() {
  List<dynamic> list = [1, "2", "dart", "python", "3.4", 3.4, 1.00];

  List<String> str = [];
  List<String> nums = [];

  for (var item in list) {
    if (item is String) {
      if (num.tryParse(item) != null) {
        nums.add(item);
      } else {
        str.add(item);
      }
    } else {
      nums.add(item.toString());
    }
  }

  print(nums);
  print(str);
}
