method x {
    object {
        method g {
            print("g");
        };
    };
};

method y {
    object {
        inherit x alias h = g;
    };
};

object {
    inherit y;
    
    method h {
        print("h");
    };
}.h;