object {
    method f {
        var x := 1;
        def o = object {
            method g {
                print(x);
            };
        };
        
        x := 99;
        return o;
    };
}.f.g;