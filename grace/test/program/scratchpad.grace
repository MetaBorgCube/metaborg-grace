method if(cond) then(blk1) else(blk2) {
  cond.ifTrue(blk1) ifFalse(blk2);
};

object {
  base_print( if false then { "condition is true"; } else { "condition is false"; });
};

base_print 5;
