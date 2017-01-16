def a = object {
    class A {
        method f { 5; };
    };
};

class B {
    inherit a.A; // nope, inherit expr is before B object exists
    print(f);
};

B;
