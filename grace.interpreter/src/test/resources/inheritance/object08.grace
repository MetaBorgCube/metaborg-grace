class Base {
    def const = 1;
    
    def x1 is public = funF;
    
    method funF {
        const;
    };
};

class Top {
    inherit Base;
    
    def const = 3;
    
    method funF {
        const;
    };
};

print(Base.x1);
print(Top.x1);