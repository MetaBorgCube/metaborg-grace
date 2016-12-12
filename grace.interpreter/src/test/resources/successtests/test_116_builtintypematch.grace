method t116_tryMatch(pattern, obj) {
    if (pattern.match(obj)) then {
        print "OK";
    } else {
        print "Not OK; {obj} should have matched";
    };
};
method t116_tryNoMatch(pattern, obj) {
    if (pattern.match(obj)) then {
        print "Not OK; {obj} should not have matched";
    } else {
        print "OK";
    };
};

t116_tryMatch(String, "hello");
t116_tryMatch(String, "hello" ++ "world");
t116_tryNoMatch(String, 1);
t116_tryMatch(Number, 1);
t116_tryNoMatch(Number, "hello");
t116_tryMatch(Boolean, true);
t116_tryNoMatch(Boolean, 1);
