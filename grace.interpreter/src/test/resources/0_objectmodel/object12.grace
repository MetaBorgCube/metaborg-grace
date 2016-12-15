class Base {
    def const = 1;
    
    print(fun);
    
    method fun {
        const;
    };
};

class Top {
    inherit Base;
    
    def const = 3;
    
    print(fun);
};

Top;