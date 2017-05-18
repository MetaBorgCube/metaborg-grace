trait A {
    method foo {
        print("foo in A");
    };
};

trait B {
    method foo {
        print("foo in B");
    };
};


class C1 {
    use A;
    
    method bar {
        foo;
    };
};

class C2 {
    inherit C1;
    use B;
};

def ac2 = C2;

ac2.foo;
ac2.bar;

