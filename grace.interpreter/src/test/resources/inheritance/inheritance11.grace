class Base {
    
    def x = 11;
    
    method a {
        x + y; // y is not resolved
    };
};

class Middle {
    inherit Base;
    
    def y = 13;
    
    method a {
        x + y + z; // y, z are not resolved
    };
};

class Top {
    inherit Middle;

    def z = 17;

    method a {
        x + y + z;
    };
};

print(Top.a);