import 'dart:io';

void main() {
  String str1, str2;
  print("Enter first string: ");
  str1 = stdin.readLineSync();
  print("Enter second string: ");
  str2 = stdin.readLineSync();
  print("isAnamgram?? : ${isAnagram(str1, str2)}");
}

bool isAnagram(String str1, String str2) {
  String normalize(String str) => (str
          .toLowerCase()
          .replaceAll(RegExp(r'[^a-z0-9]', caseSensitive: false), '')
          .split('')
            ..sort()) // Cascade Notations '..' Chaining void sort()
      .join('');
  return normalize(str1) == normalize(str2);
}
