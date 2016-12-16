method log(s) {
    print(s);
    1;
};


method base {
    object {
        def x1 = outer.log("Base before code");
        
        print("Base code");
        
        def x2 = outer.log("Base after code");
    };
};

method middle {
    object {
        inherit outer.base;
        
        def x2 = outer.log("Middle before code");
        
        print("Middle code");
        
        def x3 = outer.log("Middle after code");
    };
};


object {
    inherit middle;
    
    def x4 = outer.log("Top before code");
    
    print("Top code");
    
    def x5 = outer.log("Top after code");
};
