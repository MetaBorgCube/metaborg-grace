method x {
    object {
        method g {
            print("g");
        };
    };
};

object {
    inherit x alias h = g;
    
    method h { // 'h' cannot be redeclared because it is already declared as a method on line 10
        print("h");
    };
};