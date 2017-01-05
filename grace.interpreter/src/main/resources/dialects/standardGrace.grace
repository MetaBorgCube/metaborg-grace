method if(cond) then(blk1) else(blk2) {
  cond.ifTrue(blk1) ifFalse(blk2);
};

method if(cond) then(blk) {
    cond.ifTrue(blk);
};
