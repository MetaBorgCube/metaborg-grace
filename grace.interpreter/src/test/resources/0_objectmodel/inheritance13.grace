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
        
        method asString {
          map.asString;
        };
    };
};

print("m.map");
print(m.map.asString);
print("A.trait.map");
print(A.TRAIT.map.asString);
print(m.asString);