class Base {
    
    def x = 11;
    
    method a {
        x + y;
    };
};

class Middle {
    inherit Base;
    
    def y = 13;
    
    method a {
        x + y + z;
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