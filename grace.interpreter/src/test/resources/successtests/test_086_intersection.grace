type A = {
    foo(arg:String) -> String
}

type B = {
    bar(arg : Number) -> Number
}

def ab = object {
    method foo(s) {
        s;
    };

    method bar(n) {
        n;
    };
};
print(ab.foo("Hello"));
def a = ab;
def b = ab;
print(a.foo("World"));
print(b.bar(73));
