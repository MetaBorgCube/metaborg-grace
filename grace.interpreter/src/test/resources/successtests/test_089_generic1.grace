type A[[T]] = {
    foo(_ : T) -> Number
    bar(_ : Number) -> T
};

var a := object {
    method foo(x) { x.size; };
    method bar(y){ "{y}"; };
};

def b = object {
    method foo(x) { 1; };
    method bar(y) { y < 0; };
};

def c = object {
    method foo(x) { x.size; };
    method bar(y) { "{y}"; };
};

a := c;
print(a.foo("Hello"));
print(b.foo(true));