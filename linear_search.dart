void binary_search(List<int> a, int b) {
  int position = 0;
  for (int c = 0; c < a.length; c++) {
    if (b == a[c]) {
      position = c;
      break;
    }
  }
  position == 0
      ? print('$b is not present in the list')
      : print('$b is available at index: $position');
}

void main() {
  List<int> a = [5, 9, 7, 4, 3];
  var b = 4;

  binary_search(a, b);
}
