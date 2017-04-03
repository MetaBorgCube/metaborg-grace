method m {
    print("in outer");
};

class A {
    method m {
        print("in inner");
    };
    
    method n {
        m;
    };
};

class B {
    inherit A exclude m;
};

B.n;