class Base {
    
    method a {
        print("Base.a");
    };
};

class Middle {
    inherit outer.Base;
    
    method a {
        print("Middle.a");
    };
};

class Top {
    inherit outer.Middle;

    method a {
        print("Top.a");
    };
};

self.Base.a;
self.Middle.a;
self.Top.a;