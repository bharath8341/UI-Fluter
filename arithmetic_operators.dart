import 'dart:io';

int sum(int a, int b){
    return (a+b);
}
int sub(int a, int b){
    return (a-b);
}
int mul(int a, int b){
    return (a*b);
}
double muld(double a, double b){
    return (a*b);
}
int div(int a, int b){
    return (a~/b);
}
double divd(int a, int b){
    return (a/b);
}

// the functions by using lambda function.

void main(){
    stdout.write("Enter a value:");
    int a=int.parse(stdin.readLineSync()!);
    stdout.write("Enter b value:");
    int b=int.parse(stdin.readLineSync()!);;
    double c=8.23;
    double d=5.34;
    stdout.writeln('the value of a is $a');
    // stdout.write('the sum of a and b is $(a+b)');
    stdout.writeln('the sum of $a and $b is ${a+b}');
    stdout.writeln('the sum of $a and $b is ${sum(a,b)}');
    stdout.writeln('the sub of $a and $b is ${sub(a,b)}');
    stdout.writeln('the mul of $a and $b is ${mul(a,b)}');
    stdout.writeln('the muld of $c and $d is ${muld(c,d)}');
    stdout.writeln('the div of $a and $b is ${div(a,b)}');
    stdout.writeln('the divd of $a and $b is ${divd(a,b)}');
}
