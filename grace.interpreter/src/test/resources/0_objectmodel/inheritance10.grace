class Base {
    
    def x = 11;
    
    method a {
        x;
    };
};

class Middle {
    inherit Base;
    
    def y = 13;
    
    method a {
        x + y;
    };
};

class Top {
    inherit Middle;

    def z = 17;

    method a {
        x + y + z;
    };
};

print(Base.a);
print(Middle.a);
print(Top.a);