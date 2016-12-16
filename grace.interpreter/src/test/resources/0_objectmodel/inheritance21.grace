method A {
    object {
        { print("Call f"); f; }.apply;
        
        def f is public = { print("A.f"); 11; }.apply;
    };
};

def x = object {
    inherit A;
    
 
    method f {
        print("B.f");
        13;
    };
};

print(x.f);