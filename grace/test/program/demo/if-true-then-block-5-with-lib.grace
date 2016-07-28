method if (cond) then (blk) { // from prelude
  cond.ifTrue { blk.apply; };
};

base_print( if true then { 5; });