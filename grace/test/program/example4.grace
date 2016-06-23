method print(s) { 
  base_print(s.asString);
};

method if(cond) then(blk1) else(blk2) {
    cond.ifTrue(blk1) ifFalse(blk2);
};

//method rec(c) {
//  
//};

def b = "a field on the root object";

def a = object {
  def b = "the field b in object a";
  method asString { b; };
};

print(a);

////def t = true;
////def f = false;
////print(true);
////print(false);
////
////print(false || false);
////print(false || true);
////print(true || false);
////print(true || true);
