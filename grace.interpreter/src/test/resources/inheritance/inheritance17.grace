method A {
    object {
        f;
        
        method f {
            print("A");
        };
        
        def g = 42;
    };
};

def x = object {
    inherit A;
    
    def f is public = {foobar -> print("B"); 1; }.apply(45);
 
    method g {
        99;
    };
};

print(x.g);