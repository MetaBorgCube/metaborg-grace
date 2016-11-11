method if(cond) then(blk1) else(blk2) {
  cond.ifTrue(blk1) ifFalse(blk2);
};

object {
  def a = if true then { "condition is true"; } else { "condition is false"; };
  base_print(a);
};

method a {
  def b = true;
};
