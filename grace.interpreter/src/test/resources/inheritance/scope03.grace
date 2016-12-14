class A {
    def inA = 42;
    
    class CinA {
        def inCinA is public = inA;
        
        method inA {
            4;
        };
    };
};

print(A.CinA.inCinA);