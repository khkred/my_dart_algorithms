void towerOfHanoi(int n, String a, String b, String c) {
  if (n > 0) {
    // Moving from A to B using C
    towerOfHanoi(n - 1, a, c, b);

    // Next move A --> C
    print('Moving the disk from $a to $c');

    //Moving from B to C using A
    towerOfHanoi(n - 1, b, a, c);
  }
}

void main() {
  towerOfHanoi(3, 'a', 'b', 'c');
}
