class Base {
    
    def x = 11;
    
    method a {
        self.x;
    };
};

class Middle {
    inherit outer.Base;
    
    def y = 13;
    
    method a {
        self.x + self.y;
    };
};

class Top {
    inherit outer.Middle;

    def z = 17;

    method a {
        self.x + self.y + self.z;
    };
};

print(self.Base.a);
print(self.Middle.a);
print(self.Top.a);