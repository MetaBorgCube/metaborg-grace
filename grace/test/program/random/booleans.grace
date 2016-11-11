def trueo = object {
  method ifTrue(blk) { blk.apply; };
  method ifFalse(blk) { };
  method ifTrue(blk1) ifFalse(blk2) { blk1.apply; };
  method || (other) { self; };
  method && (other) { other; };
  method asString { "true"; };
};

def falseo = object {
  method ifTrue(blk) { };
  method ifFalse(blk) { blk.apply; };
  method ifTrue(blk1) ifFalse(blk2) { blk2.apply; };
  method || (other) { other; };
  method && (other) { self; };
  method asString { "false"; };
};