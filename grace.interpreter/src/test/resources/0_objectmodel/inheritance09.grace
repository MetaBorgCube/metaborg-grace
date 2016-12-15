class Base {
    
    method a {
        print("Base.a");
    };
};

class Middle {
    inherit Base;
    
    method a {
        print("Middle.a");
    };
};

class Top {
    inherit Middle;

    method a {
        print("Top.a");
    };
};

Base.a;
Middle.a;
Top.a;