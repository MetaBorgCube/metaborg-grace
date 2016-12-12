method t129_foo(x : type { bar -> String }) {
    print(x.bar)
};

def y = object {
    def bar is readable = "OK";
};
t129_foo(y);