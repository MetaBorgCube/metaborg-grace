method if (cond) then (blk1) else (blk2) {
    cond.ifTrue(blk1) ifFalse(blk2);
};

method fibonacci(n) {
  if ((n == 1) || (n == 2)) then {
    1;
  } else {
    fibonacci(n-1) + fibonacci(n-2);
  };
};

//print(fibonacci(13));
var n := 1;

def increment = { n := n + 1; };

increment.apply;
increment.apply;
increment.apply;

print(n);