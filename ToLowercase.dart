class Solution {
  String toLowerCase(String s) {
    List<String> stringList = s.split('');

    for (var i = 0; i < stringList.length; i++) {
      if (stringList[i].codeUnitAt(0) <= 90 &&
          stringList[i].codeUnitAt(0) >= 65) {
        int asciiValue = stringList[i].codeUnitAt(0);
        stringList[i] = String.fromCharCode(asciiValue + 32);
      }
    }

    return stringList.join();
  }
}

void main() {
  Solution sol = Solution();
  print(sol.toLowerCase('al&phaBET'));
}
