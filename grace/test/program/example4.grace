method print(o) { 
  base_print(o.asString);
};

def trueo = object {
  method ifTrue { self; };
  method ifFalse { falseo; };
  method ifTrue(b1) IfFalse(b2) { b1.apply; };
  method || (other) { base_print("true.||() is called"); self; };
  method && (other) { base_print("true.&&() is called"); other; };
  method asString { "true"; };
};

def falseo = object {
  method ifTrue { trueo; };
  method ifFalse { self; };
  method ifTrue(b1) IfFalse(b2) { b2.apply; };
  method || (other) { base_print("false.||() is called"); other; };
  method && (other) { base_print("false.&&() is called"); self; };
  method asString { "false"; };
};


method if(cond) then(blk1) else(blk2) {
    cond.ifTrue(blk1) ifFalse(blk2);
};

//def b = "a field on the root object";
//
//def a = object {
//  def b = "the field b in object a";
//  method asString { b; };
//};
//
//print(a);

print(trueo);
print(falseo);

base_print("\n");

print(falseo || falseo);
print(falseo || trueo);
print(trueo || falseo);
print(trueo || trueo);

base_print("\n");

print(falseo && falseo);
print(falseo && trueo);
print(trueo && falseo);
print(trueo && trueo);
