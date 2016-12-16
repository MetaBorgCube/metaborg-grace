method A {
    object {
        method f {
            print("A");
            13;
        };
        
    };
};

def x = object {
    inherit A;
    
    def f is public = 42;
 
};

print(x.f);