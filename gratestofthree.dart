import 'dart:io';

void main(){
    stdout.write("Enter a value:");
    int a=int.parse(stdin.readLineSync()!);
    stdout.write("Enter b value:");
    int b=int.parse(stdin.readLineSync()!);
    stdout.write("Enter c value:");
    int c=int.parse(stdin.readLineSync()!);
    if(a>b && a>c) stdout.writeln('$a is largest element');
    else if(b>a && b>c) stdout.writeln('$b is largest element');
    else stdout.writeln('$c is largest element');
    stdout.writeln('${a>b && a>c ? a : b>a && b>c ? b : c} is largest element');
}
