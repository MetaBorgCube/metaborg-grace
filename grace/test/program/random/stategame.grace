method if (cond) then (blk1) else (blk2) {
    cond.ifTrue(blk1) ifFalse(blk2);
};

class game(initial) {
  var value := initial;
  method getState {
    value;
  };
  method incrementState {
    value := value + 1;
  };
  method play(n) {
    if (n == value) then {
        print "you win!";
    } else {
        print "try again!";
    };
  };
};


def g = game(5);

g.incrementState;
g.play(5);
g.incrementState;
g.play(7);
print(g.getState);
