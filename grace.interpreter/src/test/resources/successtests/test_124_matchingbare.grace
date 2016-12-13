method t124_tryMatch(x) {
    match(x)
        case { y : String -> out "STRING"; }
        case { 2 -> out "TWO"; }
        case { y -> out "FALLTHROUGH {y}"; };
};

t124_tryMatch 2;
t124_tryMatch 1;