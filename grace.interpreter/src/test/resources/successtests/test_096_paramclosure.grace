method t096_objcreator(x, y) {
    object {
        method extract {
            [x, y];
        };
    };
};

def a = t096_objcreator(3, 4);
def b = t096_objcreator(6, 7);
def ae = a.extract;
print "{ae.first;} {ae.second;}";
def be = b.extract;
print "{be.first;} {be.second;}";