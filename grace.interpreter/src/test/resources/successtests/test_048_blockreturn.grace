method t048_blockrun(bk) {
    bk.apply;
    return 100;
};
method t048_foo {
    var a := { return 6; };
    print "here";
    a.apply;
    print "not here";
};
method t048_baz {
    var a := { return 13; };
    t048_blockrun(a);
    return 9;
};
var t048_vals := [1, 5, 6, 3, 12, 9, 7, 15, 13];
method t048_bar(n) {
    for (t048_vals) do { v->
        if (v > n) then {
            return v;
        };
    };
    return 0;
};

var b := t048_foo;
print(b);
print(t048_baz);

print(t048_bar(10));
print(t048_bar(20));
print(t048_bar(5));
