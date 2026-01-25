import 'dart:io';

class Solution {
  int minimumDifference(List<int> nums, int k) {
    if (k == 1) return 0;

    nums.sort();

    int minDiff = nums.last - nums.first;

    for (int i = 0; i <= nums.length - k; i++) {
      int diff = nums[i + k - 1] - nums[i];
      if (diff < minDiff) {
        minDiff = diff;
      }
    }

    return minDiff;
  }
}

void main() {
  Solution solution = Solution();

  // Example test cases
  List<List<int>> testNums = [
    [9, 4, 1, 7],
    [90],
    [1, 3, 6, 10, 15],
    [100, 200, 300, 350, 400],
  ];

  List<int> testK = [2, 1, 3, 2];

  for (int i = 0; i < testNums.length; i++) {
    int result = solution.minimumDifference(testNums[i], testK[i]);
    print("Test Case ${i + 1}:");
    print("Nums = ${testNums[i]}");
    print("k = ${testK[i]}");
    print("Minimum Difference = $result");
    print("-----------------------------");
  }

  // Optional: User input
  print("Enter numbers separated by space:");
  String? numsInput = stdin.readLineSync();

  print("Enter k:");
  String? kInput = stdin.readLineSync();

  if (numsInput != null && kInput != null) {
    List<int> nums = numsInput.split(' ').map(int.parse).toList();
    int k = int.parse(kInput);

    int result = solution.minimumDifference(nums, k);
    print("Result: $result");
  }
}
