class A {
    method f(bl, x) {
        if(x > 0) then {
            print("A");
            bl.apply;
            print("B");
        } else {
            { return 3; };
        };
    };
};

def a = A;
def bl = a.f(33, 0);

a.f(bl, 2); // error: the f that created bl has already returned