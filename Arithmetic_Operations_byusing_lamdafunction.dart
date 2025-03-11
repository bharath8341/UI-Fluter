import 'dart:io';

int sum (int x, int y)=> (x+y);

int sub (int x, int y)=> (x-y);

int mul (int x, int y)=> (x*y);

double div (int x, int y)=> (x/y);

int moddiv (int x, int y)=> (x~/y);
	
void main() {
  
  stdout.write("Enter first number: ");
  int x = int.parse(stdin.readLineSync()!);

 
  stdout.write("Enter second number: ");
  int y = int.parse(stdin.readLineSync()!);


	print(sum(x,y));
	print(sub(x,y));
	print(mul(x,y));
	print(div(x,y));
	print(moddiv(x,y));

}
