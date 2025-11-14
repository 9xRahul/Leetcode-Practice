class Solution {
  int islandPerimeter(List<List<int>> grid) {
    int rows = grid.length;
    int cols = grid[0].length;

    int land = 0;
    int adj = 0;

    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < cols; c++) {
        if (grid[r][c] == 1) {
          land++;

          // Check right neighbor
          if (c + 1 < cols && grid[r][c + 1] == 1) {
            adj++;
          }

          // Check down neighbor
          if (r + 1 < rows && grid[r + 1][c] == 1) {
            adj++;
          }
        }
      }
    }

    return 4 * land - 2 * adj;
  }
}

void main() {
  Solution sol = Solution();
  print(
    sol.islandPerimeter([
      [0, 1, 0, 0],
      [1, 1, 1, 0],
      [0, 1, 0, 0],
      [1, 1, 0, 0],
    ]),
  );
}
