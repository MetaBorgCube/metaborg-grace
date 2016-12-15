class A {
    def inA = 42;
    
    class CinA {
        def inCinA is public = inA;
    };
    
    class CinA2 {
        inherit CinA;
        
        method inA {
            2;
        };
    };
};

print(A.CinA2.inCinA);