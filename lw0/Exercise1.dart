import "dart:io";

void fizzbuzz(int a) {
  if (a % 15 == 0) {
    print("fizzbuzz");
  } else if (a % 3 == 0) {
    print("fizz");
  } else if (a % 5 == 0) {
    print("buzz");
  } else {
    print(a);
  }
}

void main() {
  int? n = int.parse(stdin.readLineSync()!);
  print("---------------------");
  for (var i = 1; i <= n; i++) {
    fizzbuzz(i);
  }
}
