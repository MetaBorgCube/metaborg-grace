def before = 1;

class A {
    def a is public = before;
    def b is public = after;
};

print(A.a);

def after = -1;

print(A.b);