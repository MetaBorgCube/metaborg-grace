class A {
    def inA = 42;
    
    class CinA {
        def inCinA is public = self.inA;
        
        method inA {
            4;
        };
    };
};

print(self.A.CinA.inCinA);