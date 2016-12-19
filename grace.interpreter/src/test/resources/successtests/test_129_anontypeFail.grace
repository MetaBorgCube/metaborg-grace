method t129_foo(x : type { bar -> String }) {
    print(x.bar);
};

def y = object {
    def bar = "OK\n";
};


// should raise NoSuchMethod
t129_foo(y);