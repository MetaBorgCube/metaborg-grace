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
    
    def onlyhere = 6;
    
    method fun {
        const + onlyhere;
    };
    
};

print(Top); // error because variable onlyhere not allocated yet