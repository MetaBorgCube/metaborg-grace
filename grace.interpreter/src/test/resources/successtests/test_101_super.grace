object {
    class aa(v') {
        var v := v';
        method foo {
            print "A's foo: {self.v}";
        };
        method baz {
            print "A's baz";
        };
    };
    class bb(x) {
        inherit aa(x) alias aabaz = baz;
        method bar {
            print "B's bar";
        };
        method baz {
            print "B's baz invokes...";
            aabaz;
        };
    };
    class cc(y) {
        inherit bb(y) alias bbbaz = baz;
        method baz {
            print "C's baz invokes...";
            bbbaz;
        };
    };
    
    var b := cc "ARGUMENT";
    b.foo;
    b.bar;
    b.baz;
};