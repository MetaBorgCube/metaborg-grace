method ancestor {
    object {
        def x = 1;
        method m1 {
            object {
                method f {
                    x;
                };
            };
        };
    };
};

def x = 2;

method m2 {
    object {
        inherit ancestor.m1;
        method g {
            x;
        };
    };
};

print(m2.f);
print(m2.g);