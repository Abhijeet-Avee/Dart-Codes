import 'dart:io';

void main() {
  int testcases = int.parse(stdin.readLineSync());
  int n;
  for (int i = 0; i < testcases; i++) {
    int npeople = int.parse(stdin.readLineSync());
    List<int> a = new List<int>();
    for (int j = 0; j < npeople; j++) {
      n = int.parse(stdin.readLineSync());
      a.insert(j, n);
    }
    if (color(a, npeople))
      print("BOYS");
    else
      print("GIRLS");
  }
}

bool color(List<int> a, int n) {
  Map<int, int> colorcode = new Map<int, int>();
  for (int j = 0; j < n; j++) {
    if (!colorcode.containsKey(a[j]))
      colorcode.putIfAbsent(a[j], () => 1);
    else
      return true;
  }
  return false;
}
