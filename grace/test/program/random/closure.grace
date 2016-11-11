def a = 4;

method f {
    a;
};

def a = 5;

base_print(f);

// 5 according to minigrace
// 5 according to kernan
