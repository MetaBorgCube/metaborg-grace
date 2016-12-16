method A {
    object {
        def f is public = 42;
    };
};

def x = object {
    inherit A;
    
 
    method f {
        print("B");
        13;
    };
};

print(x.f);