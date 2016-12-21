class Base {
    def const = 1;
    
    method fun {
        self.const;
    };
};

class Top {
    inherit outer.Base;
    
    def const = 3;
    
};

print(self.Top.fun);