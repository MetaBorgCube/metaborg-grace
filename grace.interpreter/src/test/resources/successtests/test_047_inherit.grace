def obj47 = object {
    class a(v') {
        var v := v';
        method foo {
            print "a's foo: {self.v}";
        };
        method baz {
            print "a's baz";
        };
    };
    class b(x) {
        inherit a(x);
        method bar {
            print "b's bar";
        };
        method baz {
            print "b's baz";
        };
    };
};

var b := obj47.b "ARGUMENT";
b.foo;
b.bar;
b.baz;
