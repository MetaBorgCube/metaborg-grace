type A = {
    bar -> String
};

type B = A & type {
    quux -> Number
};
def t131_context = object {
    method btaker(b) {
        out "{b.bar}{b.quux}";
    };
};
def t131_noMethods = object {
    def bar = "YE";
    def quux = "5";
};

// should raise NoSuchMethod
t131_context.btaker(t131_noMethods);