method a {
    object {
        method f {
            self.x;
        };
    };
};

method b {
    object {
        inherit a;
        
        var x is public := 42;
    };
};

print(b.f);