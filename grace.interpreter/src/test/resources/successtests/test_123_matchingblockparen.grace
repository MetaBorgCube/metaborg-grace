def t123_a = 1;
method t123_tryMatch(x) {
    match(x)
        case { y : String -> print "STRING"; }
        case { (t123_a) -> print "ONE"; }
        case { y : Number -> print "FALLTHROUGH {y}"; };
};

t123_tryMatch 2;
t123_tryMatch 1;
