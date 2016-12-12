def t123_a = 1;
method t123_tryMatch(x) {
    match(x)
        case { y : String -> out "STRING" }
        case { (t123_a) -> out "ONE" }
        case { y : Number -> out "FALLTHROUGH {y}" }
}

t123_tryMatch 2;
t123_tryMatch 1;
