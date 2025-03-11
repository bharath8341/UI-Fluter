import 'dart:io';

void main() {
  
  stdout.write("Enter first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

 
  stdout.write("Enter second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

 
  double sum = num1 + num2;
  double difference = num1 - num2;
  double product = num1 * num2;
  double quotient = num1 / num2;
  double remainder = num1 % num2;

  print("\nArithmetic Operations:");
  print("$num1 + $num2 = $sum");
  print("$num1 - $num2 = $difference");
  print("$num1 × $num2 = $product");
  print("$num1 ÷ $num2 = $quotient");
  print("$num1 % $num2 = $remainder");
}
