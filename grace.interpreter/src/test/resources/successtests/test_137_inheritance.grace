method t137_parent {
    object {
        def x is readable = foo;
        method foo { 1; };
        method bar { 0; };
    };
};
method t137_child {
    object {
        inherit t137_parent;
        method bar { 3; };
    };
};
def t137_a = object {
    inherit t137_parent;
    method foo { 2; };
};
def t137_c = object {
    inherit t137_child;
};

print(t137_c.bar);
print(t137_a.x);
print(t137_c.x);