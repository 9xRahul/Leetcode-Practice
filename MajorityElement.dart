class Solution {
  int majorityElement(List<int> nums) {
    int count = 0;
    int result = 0;
    int top = 0;

    if (nums.length == 1) {
      return nums[0];
    }

    for (int i = 0; i < nums.length; i++) {
      count = 0; // Reset the count for each element

      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] == nums[j]) {
          count++;
        }
      }

      if (count > top) {
        top = count;
        result = nums[i];
      }
    }

    return result;
  }
}
void main() {
  Solution sol = Solution();
  print(sol.majorityElement([3,5,6,7,3,2,42,2,3,4,5,2,3,2,34,4,5,]));
}
