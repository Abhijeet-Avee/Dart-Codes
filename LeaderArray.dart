void main() {
  List<int> list = [300, 40, 60, 90, 100, 12, 16, 17, 4, 3, 5, 2];
  leaders(list);
}

void leaders(List<int> arr) {
  int size = arr.length;
  for (int i = 0; i < size; i++) {
    int j;
    for (j = i + 1; j < size; j++) {
      if (arr[i] < arr[j]) break;
    }
    if (j == size) print(arr[i].toString() + " ");
  }
}
