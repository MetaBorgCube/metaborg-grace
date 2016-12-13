method A {
    object {
        method TRAIT {
            object {
                method map {
                    object {
                        method asString { "a map"; };
                    };
                };
            };
        };
    };
};

method m {
    object {
        inherit A.TRAIT;
    };
};

print("m.map");
print(m.map);
print("A.trait.map");
print(A.TRAIT.map);
