def a = object {
    class A {
        method f { 5; };
    };
};

class B {
    inherit a.A;
    print(f);
};

B;
