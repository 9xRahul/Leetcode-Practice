void main() {
  int num = 313;
  String str = num.toString();

  for (
    int i = 0, j = str.length - 1;
    i < int.parse(str[0]) + int.parse(str[str.length - 1]) / 2;
    i++, j--
  ) {
    if (str[i] != str[j]) {
      print("Not a palindrome");
      break;
    }
  }
  print("Palindrome");
}
