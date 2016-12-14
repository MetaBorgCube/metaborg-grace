class A {
    def inA = 42;
    
    method CinA {
      object {
        def inCinA is public = inA;
      };
    };
    
    method CinA2 {
      object {
        inherit CinA;
      };
    };
};

print(A.CinA2.inCinA);