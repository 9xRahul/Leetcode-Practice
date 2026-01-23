class Solution {
  int sumOfUnique(List<int> nums) {
    Map<int, int> count = {};
    int sum = 0;
    for (int i = 0; i < nums.length; i++) {
      count[nums[i]] = (count[nums[i]] ?? 0) + 1;
    }

    count.forEach((key, val) {
      if (val == 1) {
        sum += key;
      }
    });

    return sum;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.sumOfUnique([2, 3, 1, 1, 4, 8]));
}
