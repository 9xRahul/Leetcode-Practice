import 'dart:io';

class Solution {
  List<int> constructTransformedArray(List<int> nums) {
    int n = nums.length;
    List<int> result = List.filled(n, 0);

    for (int i = 0; i < n; i++) {
      int newIndex = (i + nums[i]) % n;

      // Fix negative modulo in Dart
      if (newIndex < 0) {
        newIndex += n;
      }

      result[i] = nums[newIndex];
    }

    return result;
  }
}

void main() {
  // Example input
  List<int> nums = [2, -1, 1, 2];

  Solution sol = Solution();
  List<int> transformed = sol.constructTransformedArray(nums);

  print("Original: $nums");
  print("Transformed: $transformed");
}
