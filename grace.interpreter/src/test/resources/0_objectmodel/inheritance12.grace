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
        inherit outer.A.TRAIT;
    };
};

print("m.map");
print(self.m.map.asString);
print("A.trait.map");
print(self.A.TRAIT.map.asString);
