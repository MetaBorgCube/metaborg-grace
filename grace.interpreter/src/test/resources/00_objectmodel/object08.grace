class Base {
    def const = 1;
    
    def x1 is public = self.funF;
    
    method funF {
        self.const;
    };
};

class Top {
    inherit outer.Base;
    
    def const = 3;
    
    method funF {
        self.const;
    };
};

print(self.Base.x1);
print(self.Top.x1);