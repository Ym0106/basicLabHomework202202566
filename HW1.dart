import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  
  if (input == null || input.isEmpty) {
    return;
  }
  
  int? number = int.tryParse(input);
  
  if (number == null || number <= 0) {
    print(input);
    return;
  }
  
  int sum = calculateDigitSum(number);
  
  print(sum);
}

int calculateDigitSum(int number) {
  int sum = 0;
  int temp = number;
  
  while (temp > 0) {
    sum += temp % 10;
    temp ~/= 10;
  }
  
  return sum;
}
