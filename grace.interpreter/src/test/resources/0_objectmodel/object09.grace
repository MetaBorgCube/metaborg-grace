class Base {
    def const = 1;
    
    method fun {
        const;
    };
};

class Top {
    inherit Base;
    
    def const = 3;
    
};

print(Top.fun);