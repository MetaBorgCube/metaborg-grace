method A {
    object {
        { print("Call f"); f; }.apply;
        
        method f {
            print("A.f");
            11;
        };
    };
};

def x = object {
    inherit A;
    
    def f is public = { print("B.f"); 13; }.apply;
};

print(x.f);