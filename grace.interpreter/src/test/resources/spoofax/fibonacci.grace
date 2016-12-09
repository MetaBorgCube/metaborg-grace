method if(cond) then(blk1) else(blk2) {
    cond.ifTrue(blk1) ifFalse(blk2);
};

method fib(n) {
  if ((n == 0) || (n == 1)) then { n; } else { fib(n-1) + fib(n-2); };
};


// should be 8
print(fib(6));