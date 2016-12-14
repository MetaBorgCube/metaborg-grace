def x is public = 1;

method A {
    object {    
        def x is public = 42;
        
        method boo {
            outer.x;
        };
    };
};

print(A.boo);