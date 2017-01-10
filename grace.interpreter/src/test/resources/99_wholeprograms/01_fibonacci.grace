// if(_)then(_)(_,_)else(_)
method if(cond) then(blk1) else(blk2) {
    cond.ifTrue(blk1);
    cond.ifFalse(blk2);
};

method fib(n) {
  // if(_)then(_)else(_)
  if (n <= 1) then { n; } else { self.fib(n-1) + self.fib(n-2); };
};

print(self.fib(14));

