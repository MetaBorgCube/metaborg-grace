method t099_test'(a') {
    return a';
};

var x' := 1;
def y' = 2;
x' := y';

print(x');
print(y');
print(t099_test'(x'));

x' := object {
    method t' {
        return "OK";
    };
};

print("{x'.t'}");