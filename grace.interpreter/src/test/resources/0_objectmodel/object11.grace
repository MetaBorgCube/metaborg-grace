class Base {
    def const = 1;
    
    def x1 is public = self.fun;
    
    method fun {
        self.const;
    };
};

class Top {
    inherit outer.Base;
    
    def const = 3;
    
    def onlyhere = 6;
    
    method fun {
        self.const + self.onlyhere;
    };
    
};

print(self.Top); // error because variable onlyhere not allocated yet