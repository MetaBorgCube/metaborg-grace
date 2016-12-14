method log(s) {
    print(s);
    1;
};


method base {
    object {
        def x1 = log("Base before code");
        
        print("Base code");
        
        def x2 = log("Base after code");
        
        def param is public = { x -> print("param init in Base"); -500;}.apply;
        
        def z is public = self.crap + param;
        
        method crap {
            print("Crap in Base");
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
            print("Crap in Middle");
            -55;
        };
    };
};


def myobj = object {
    inherit middle;
    
    def x4 = log("Top before code");
    
    print("Top code");
    
    def x5 = log("Top after code");
    
    method crap {
        print("Crap in Top");
        42;
    };
    
    def param is public = { x -> print("param init in Top"); 500;}.apply;
};

print(myobj.z);
print(myobj.param);
