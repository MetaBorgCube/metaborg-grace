class Base {

    def x1 is public = funF;
    
    method funF {
        1;
    };
};

class Top {
    inherit Base;
    
    method funF {
        3;
    };
};

print(Base.x1);
print(Top.x1);