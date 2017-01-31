def before = 1;

class A {
    def a is public = outer.before;
    def b is public = outer.after;
};

print(self.A.a);
print(self.A.b); // error caused by the fact that after is allocated but uninitialized

def after = -1;