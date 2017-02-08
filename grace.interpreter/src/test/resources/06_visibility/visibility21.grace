class A {
    def x = 1;
    class Ainner {
        method f {
            x;
        };
    };
};

class B {
    inherit A.Ainner;
    print(f);
};

B;