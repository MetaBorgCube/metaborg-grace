class Base {

    def x1 is public = self.funF;
    
    method funF {
        1;
    };
};

class Top {
    inherit outer.Base;
    
    method funF {
        3;
    };
};

print(self.Base.x1);
print(self.Top.x1);