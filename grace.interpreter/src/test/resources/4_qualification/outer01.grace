def a = 5;
var b := 6;
method c { 7; };
//44
object {
  //43
  method inner1 {} ;
  object {
    //42
    method inner2 {};
    print(a);
    print(b);
    print(c);
  };
};
