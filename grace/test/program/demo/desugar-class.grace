class foo {
  def a = false;
  method f { a; };
};

object {
  inherit foo;
  def a = true;
  print( f );
};
var x;
method a(v) {
  var b; 
  b := v;
  self.x:=(v);
};
