class Base {
    def const = 1;
    
    def x1 is public = fun;
    
    method fun {
        const;
    };
};

class Top {
    inherit Base;
    
    def const = 3;
    
};

print(Top.x1);
print(Top.fun);