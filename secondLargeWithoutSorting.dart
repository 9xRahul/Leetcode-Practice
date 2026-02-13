void main() {
  List<int> list = [1,2,3,4,5,6,7,8,9,10];

  int first = -9999999999;
  int second = -999999999999;

  for (var item in list) {
    if (item > first) {
      second = first;
      first = item;
    } else if (item != first && item > second) {
      second = item;
    }
  }

  print(second);
}
