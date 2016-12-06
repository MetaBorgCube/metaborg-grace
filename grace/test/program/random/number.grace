method if (cond) then (blk1) else (blk2) {
    cond.ifTrue(blk1) ifFalse(blk2);
};

method fibonacci(n) {
  if ((n == 1) || (n == 2)) then {
    print("then");
    1;
  } else {
    print("else");
    def a = 13;
    fibbonacci(n-1) + fibonacco(n-2);
  };
};

method test(p) {
  (p == 3) || (p == 4);
};

print(test(3));

print(fibonacci(3));
