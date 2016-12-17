method log(s) {
    print(s);
    1;
};


method base {
    object {
        def x1 = outer.log("Base before code");
        
        print("Base code");
        
        def x2 = outer.log("Base after code");
        
        def z is public = (self.crap) + (self.param);
        
        def param = { x -> print("param init in Base"); -500;}.apply;
        
        method crap {
            print("Crap in Base");
            -99;
        };
    };
};

method middle {
    object {
        inherit outer.base;
        
        def x2 = outer.log("Middle before code");
        
        print("Middle code");
        
        def x3 = outer.log("Middle after code");
        
        method crap {
            print("Crap in Middle");
            -55;
        };
    };
};


def myobj = object {
    inherit outer.middle;
    
    def x4 = outer.log("Top before code");
    
    print("Top code");
    
    def x5 = outer.log("Top after code");
    
    method crap {
        print("Crap in Top");
        42;
    };
    
    def param = { x -> print("param init in Top"); 500;}.apply;
};

print(self.myobj.z);
