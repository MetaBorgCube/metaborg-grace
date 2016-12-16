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
    
};

print(self.Top.x1);
print(self.Top.fun);