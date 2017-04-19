class A {
    def x = 9;
};

object {
    inherit A alias y = x;
    
    method y {
    };
};