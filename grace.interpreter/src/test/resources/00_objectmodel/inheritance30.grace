def a = object {
    method new {
        object {
            method parent { };
            print(outer.g);
        };
    };
    method g { "a"; };
};

def context = object {
    method g { "m"; };
    a.new;
    object {
        inherit a.new;
        print(outer.g);
        method child {};
    };
};

