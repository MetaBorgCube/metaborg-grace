type A = {
    bar -> String;
};

type B = A & type {
    quux -> Number;
};

def t131_context = object {
    method btaker(b : B) {
        print "{b.bar}{b.quux}";
    };
};
def t131_barAndQuux = object {
    def bar is readable = "YE";
    def quux is readable = "5";
};
t131_context.btaker(t131_barAndQuux);