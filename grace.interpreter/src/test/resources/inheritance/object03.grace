method log(s) {
    print(s);
    1;
};


method base {
    object {
        def x1 = log("Base before code");
        
        print("Base code");
        
        def x2 = log("Base after code");
        
        def z is public = self.crap;
        
        method crap {
            -99;
        };
    };
};

method middle {
    object {
        inherit base;
        
        def x2 = log("Middle before code");
        
        print("Middle code");
        
        def x3 = log("Middle after code");
        
        method crap {
            -55;
        };
    };
};


print(object {
    inherit middle;
    
    def x4 = log("Top before code");
    
    print("Top code");
    
    def x5 = log("Top after code");
    
    method crap {
        42;
    };
}.z);