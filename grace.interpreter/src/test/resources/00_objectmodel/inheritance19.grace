method A {
    object {
        method f {
            print("A");
            13;
        };
        
    };
};

def x = object {
    inherit outer.A;
    
    def f is public = 42;
 
};

print(self.x.f);