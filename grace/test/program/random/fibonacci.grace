method if(cond) then(blk1) else(blk2) {
    cond.ifTrue(blk1);
    cond.ifFalse(blk2);
};

method fib(n) {
  if (n <= 1) then { n; } else { fib(n-1) + fib(n-2); };
};

base_print(fib(2));
base_print(14);
//print (fib(1));
