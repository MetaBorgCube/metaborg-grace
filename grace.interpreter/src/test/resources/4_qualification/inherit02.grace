class A {
    method f { 5; };
};

class B {
    inherit A;
};

class C {
    inherit B;
    print(f);
};

C;
