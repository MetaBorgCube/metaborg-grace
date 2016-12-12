method t117_tryMatch(pattern, value) {
    if (pattern.match(value)) then {
        print "OK";
    } else {
        print "Not OK; {pattern} should have matched {value}";
    };
};
method t117_tryNoMatch(pattern, value) {
    if (pattern.match(value)) then {
        print "Not OK; {pattern} should not have matched {value}";
    } else {
        print "OK";
    };
};

t117_tryMatch(1,1);
t117_tryNoMatch(1,2);
t117_tryMatch("test", "test");
t117_tryNoMatch("test", "wrong");
t117_tryMatch(true, true);
t117_tryNoMatch(true, false);
t117_tryNoMatch(1, true);
t117_tryNoMatch("test", true);
t117_tryNoMatch(true, 2);