method t040_assertValue(v) andThen (trueBlock) otherwise (falseBlock) {
    if (v) then {
        trueBlock.apply;
    } else {
        falseBlock.apply;
    };
};

t040_assertValue(true)
    andThen { out "It's true!"; }
    otherwise { out "It's false!"; };
t040_assertValue(false)
    andThen { out "This one's true!"; }
    otherwise { out "This one's false!"; };