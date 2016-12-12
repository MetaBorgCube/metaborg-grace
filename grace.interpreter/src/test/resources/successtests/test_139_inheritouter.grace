def a = object {
    method new {
        object {
            print(outer);
        };
    };
    method asString { "a"; };
};

def context = object {
    method asString { "m"; };
    a.new;
    object {
        inherit a.new;
        print(outer);
    };
};

