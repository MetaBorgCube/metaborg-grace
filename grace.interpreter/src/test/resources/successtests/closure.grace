def a = 4;

method f {
    self.a;
};

def a = 5;

print(self.f);

// 5 according to minigrace
// 5 according to kernan
