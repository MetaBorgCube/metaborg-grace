method t040_assertValue(v) andThen (trueBlock) otherwise (falseBlock) {
    if (v) then {
        trueBlock.apply;
    } else {
        falseBlock.apply;
    };
};

t040_assertValue(true)
    andThen { print "It's true!"; }
    otherwise { print "It's false!"; };
t040_assertValue(false)
    andThen { print "This one's true!"; }
    otherwise { print "This one's false!"; };