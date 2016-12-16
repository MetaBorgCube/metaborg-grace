class A {
    def inA = 42;
    
    class CinA {
        def inCinA is public = outer.inA;
    };
    
    class CinA2 {
        inherit outer.CinA;
        
        method inA {
            2;
        };
    };
};

print(self.A.CinA2.inCinA);