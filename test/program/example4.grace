//def a = object { 
//  def b = 3;
//  method f {
//    base_print "f in a invoked";
//    4;
//  };
//  5;
//  b;
//  base_print "hoi";
//  base_print 1;
//};
//

method if_then_else(c, t, e) {
  base_ifThenElse(c, t, e);
};

def a = object { method apply { base_print "ugly 'lambda' invoked"; }; };
//
//def b = { base_print "pretty 'lambda' invoked"; };
//
//def b = { a -> base_print "pretty 'lambda' invoked"; };
def b = { base_print "pretty 'lambda' invoked"; };

if_then_else(false, a , b);
