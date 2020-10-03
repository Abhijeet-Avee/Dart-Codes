void main() {
  List<int> arr = [1, 2, 4, 5, 6, 7];
  print("Array is $arr");
  print("Missing number: ${missingNumber(arr)}");
}

int missingNumber(List<int> a) {
  int total = 1;
  //pick one number from known numbers and subtract one number from given numbers.
  for (int i = 2; i <= a.length + 1; i++) {
    total += i;
    total -= a[i - 2];
  }
  return total;
}
