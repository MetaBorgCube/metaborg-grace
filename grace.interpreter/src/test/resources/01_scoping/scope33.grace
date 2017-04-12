class A {
    def x = 3;
    
    method o {
        object {
        };
    };
};

def x = 9;

class B {
    inherit A.o;
    
    print(x);
};

B;