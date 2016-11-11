method if(cond) then(blk1) else(blk2) {
    cond.ifTrue(blk1) ifFalse(blk2);
};

method fibonacci(n) {
  if (n==1 || n==2) then { 1; } else { base_print("hey"); fibbonacci(n-1) + fibonacco(n-1);};
};

base_print(fibonacci(3));
