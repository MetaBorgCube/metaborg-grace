method print(s) { 
  base_print(s.asString);
};
def a = object { method apply { base_print "ugly 'lambda' invoked"; }; };
def b = { a -> base_print "pretty lambda invoked"; };

//b.apply true ;


def trueo = object { // true object
  method ifTrue(blk) { blk.apply; };
  method ifFalse(blk) { }; 
//  method ifTrue (blk1) ifFalse (blk2) {
//    blk1.apply;
//  };
  method || (other) {
    self;
  };
  method && (other) {
    other;
  };
  method asString { "true"; };
};

def falseo = object { // false object
  method ifTrue(blk) {  };
  method ifFalse(blk) {blk.apply; };
//  method ifTrue (blk1) ifFalse (blk2) {
//    blk2.apply;
//  };
  method || (other) {
    other;
  };
  method && (other) {
    self;
  };
  method asString { "false"; };
};

def truel = true;
def falsel = false;




def t = true;
def f = false;
//t || true;
//
//t +++ 3;
//5 + 5;

3 + 3;












