method A {
    object {
        def f is public = 13;
        
        print("Init A");
        print(self.f);
        
    };
};

def B = object {
    inherit outer.A;

    print("Init B/1");
    print(self.f);
    
    method f {
        11;
    };
    
    print("Init B/2");
    print(self.f);
};