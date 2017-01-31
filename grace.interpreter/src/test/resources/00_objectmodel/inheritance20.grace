object {
    method A {
        object {
            def f is public = 42;
        };
    };
    
    def x = object {
        inherit outer.A;
        
     
        method f {
            print("B");
            13;
        };
    };
    
    print(self.x.f);
};