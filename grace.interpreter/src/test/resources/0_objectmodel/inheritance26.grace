method A {
  object {
    def f is public = 13;
    
    print("Init A");
    print(f);
  };
};

method B {
    object {
        inherit outer.A;
        
        print("Init B/1");
        print(self.f);
        
        var f is public := 15;
        
        print("Init B/2");
        print(self.f);
        
        method inc {
            print("Inc >>>");
            print(self.f);
            self.f := self.f + 1;
            print(self.f);
            print("<<<< Inc");
            self.f;
        };
    };
};

def C = object {
    inherit outer.B;

    print("Init C/1");
    print(self.f);
    
    method f {
        11;
    };
    
    print("Init C/2");
    print(self.f);
};

print(self.C.f);
print(self.C.inc);
print(self.C.f);

