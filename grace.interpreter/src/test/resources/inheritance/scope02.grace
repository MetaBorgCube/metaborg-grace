def before = 1;

class A {
    def a is public = before;
    def b is public = after;
};

print(A.a);
print(A.b); // error caused by the fact that after is allocated but uninitialized

def after = -1;