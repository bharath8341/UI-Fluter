import 'dart:io';
void switch1(String a) {
  switch(a){
    case 'red':
      stdout.writeln('the color is match with red');
    case 'blue':
      stdout.writeln('the color is match with blue');
    case 'green':
      stdout.writeln('the color is match with green');
    case 'pink':
      stdout.writeln('the color is match with pink');
    case _:
      stdout.writeln('the color is not found in list');
  }
}
void switch2(String a) {
  switch(a){
    case 'red':
    case 'blue':
    case 'green':
    case 'pink':
      stdout.writeln('the color is match');
    case _:
      stdout.writeln('the color is not found in list');
  }
}
void switch3(String a) {
  switch(a){
    case 'sunny' || 'raining':
      stdout.writeln('you have to carry umbrella');
    case _:
      stdout.writeln('No need to carry umbrella');
  }
}
String switch4(String a) {
  return switch(a){
    'sunny' || 'raining' => 'you have to carry umbrella',
    _ => 'No need to carry umbrella',
  };
}

String switch5(int marks){
    return switch(marks){
    >89 && <101 => 'O',
    >79 && <90 => 'A+',
    >69 && <80 => 'A',
    >59 && <70 => 'B+',
    >49 && <60 => 'B',
    >39 && <50 => 'C+',
    <40 => 'Fail',
    _ => 'Sorry',
  };
}

String switch6(int marks){
    String ans = switch(marks){
    >89 && <101 => 'O',
    >79 && <90 => 'A+',
    >69 && <80 => 'A',
    >59 && <70 => 'B+',
    >49 && <60 => 'B',
    >39 && <50 => 'C+',
    <40 => 'Fail',
    _ => 'Sorry',
  };
  return ans;
}