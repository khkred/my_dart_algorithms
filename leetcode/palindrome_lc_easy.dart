class Solution {
  bool isPalindrome(int x) {
    if (x < 0) {
      return false;
    }

    int a = 0;
    int b = 0;

    int y = x;

    while (y != 0) {
      b = y % 10;
      a = a * 10 + b;

      y = y ~/ 10;
    }

    return a == x;
  }
}
