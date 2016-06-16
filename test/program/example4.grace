//method print(s) { 
//  base_print(s);
//};
//
//method if (c) then_else (t, e) {
//  base_ifThenElse(c, t, e);
//};
//
//def a = object { method apply { base_print "ugly 'lambda' invoked"; }; };
//def b = { base_print "pretty lambda invoked"; };
//
//if_then_else( false , { base_print "true-ish"; }, { base_print "false-ish"; });
//
//print "hoi";

method print(s) {
  base_print(s);
};

method print (s) and (t) {
  base_print(s);
  base_print(t);
};

def a = 2;

//print(a);

print 3;

print(4);

print 5 and 6;