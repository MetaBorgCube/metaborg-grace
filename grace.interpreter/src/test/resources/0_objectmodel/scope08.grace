class A {
    def inA = 42;
    
    method CinA {
      object {
        def inCinA is public = outer.inA;
      };
    };
    
    method CinA2 {
      object {
        inherit outer.CinA;
      };
    };
};

print(self.A.CinA2.inCinA);