method A {
  object {
    def f is public = 13;
    
    print("Init A");
    print(f);
  };
};

method B {
    object {
        inherit A;
        
        print("Init B/1");
        print(f);
        
        var f is public := 15;
        
        print("Init B/2");
        print(f);
        
        method inc {
            print("Inc >>>");
            print(f);
            f := f + 1;
            print(f);
            print("<<<< Inc");
            f;
        };
    };
};

def C = object {
    inherit B;

    print("Init C/1");
    print(f);
    
    method f {
        11;
    };
    
    print("Init C/2");
    print(f);
};

print(C.f);
print(C.inc);
print(C.f);

