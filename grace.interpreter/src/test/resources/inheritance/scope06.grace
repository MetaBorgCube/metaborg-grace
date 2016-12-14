// self: 2147483647
// outer: 2147483648

def x is public = 1;

method A {
    object {
        // self: 2147483646
        // outer: 2147483647
        def x is public = 42;
        
        method boo {
            // self: 2147483646
            // outer: 2147483647
            outer.x;
        };
    };
};

print(A.boo);