void main(List<String> args) {
  List<int> arr = [1, 1, 1, 2, 3, 3, 4, 4, 4, 4, 4];
  Map<int, int> count = {};

  for (int i = 0; i < arr.length; i++) {
    count[arr[i]] = (count[arr[i]] ?? 0) + 1;
  }

  List<int> val = [];
  List<int> key = [];

  for (var value in count.entries) {
    val.add(value.value);
    key.add(value.key);
  }

  for (int i = 0; i < val.length; i++) {
    for (int j = i; j < val.length; j++) {
      if (val[i] < val[j]) {
        int temp = val[i];
        val[i] = val[j];
        val[j] = temp;

        int keyTemp = key[i];
        key[i] = key[j];
        key[j] = keyTemp;
      }
    }
  }

  print(count);

  print(key);
}
