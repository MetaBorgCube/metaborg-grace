method print(s) { 
  base_print(s);
};
//
//def a = object { method apply(a) { base_print "ugly 'lambda' invoked"; }; };
//def b = { a -> base_print "pretty lambda invoked"; };
//
//def c = 3;
//
//a;

//print  4;
//
//def d = 5;
//
//5 + 5;

def c = 42;
method a { 
//  base_print(base_add(c,d));
//  def b = 3;
  c;  
};

def e = a;

print(e);