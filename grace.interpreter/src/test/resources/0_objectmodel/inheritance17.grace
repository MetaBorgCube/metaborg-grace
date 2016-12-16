method A {
    object {
        self.f;
        
        method f {
            print("A");
        };
        
        def g = 42;
    };
};

def x = object {
    inherit outer.A;
    
    def f is public = { print("B"); 1; }.apply;
 
    method g {
        99;
    };
};

print(self.x.g);