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
        
        method asString {
          self.map.asString;
        };
    };
};

print("m.map");
print(self.m.map.asString);
print("A.trait.map");
print(self.A.TRAIT.map.asString);
print(self.m.asString);