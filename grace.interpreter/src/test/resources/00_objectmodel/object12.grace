class Base {
    def const = 1;
    
    print(self.fun);
    
    method fun {
        self.const;
    };
};

class Top {
    inherit outer.Base;
    
    def const = 3;
    
    print(self.fun);
};

self.Top;