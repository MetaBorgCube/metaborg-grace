class Base {
    
    def x = 11;
    
    method a {
        self.x + self.y; // y is not resolved
    };
};

class Middle {
    inherit outer.Base;
    
    def y = 13;
    
    method a {
        self.x + self.y + self.z; // y, z are not resolved
    };
};

class Top {
    inherit outer.Middle;

    def z = 17;

    method a {
        self.x + self.y + self.z;
    };
};

print(self.Top.a);