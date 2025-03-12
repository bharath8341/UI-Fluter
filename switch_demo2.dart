String switch1(int marks){
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