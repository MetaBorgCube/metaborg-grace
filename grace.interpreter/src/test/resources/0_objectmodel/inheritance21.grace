method A {
    object {
        { print("Call f"); self.f; }.apply;
        
        def f is public = { print("A.f"); 11; }.apply;
    };
};

def x = object {
    inherit outer.A;
    
 
    method f {
        print("B.f");
        13;
    };
};

print(self.x.f);