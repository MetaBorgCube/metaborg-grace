method t118_tryMatch(o) {
    match(o)
        case { 1 -> "ONE"; }
        case { _ : Number -> "NUMBER"; }
        case { "hello" -> "HELLO"; }
        case { x : String -> "STRING '{x}'"; };
};

print(t118_tryMatch 1);
print(t118_tryMatch 2);
print(t118_tryMatch "hello");
print(t118_tryMatch "world");
