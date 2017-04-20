object {

    def before = 1;
    
    class A {
        def a is public = outer.before;
        def b is public = outer.after;
    };
    
    print(self.A.a);
    print(self.A.b); // error caused by asString on uninitialized variable
    
    def after = -1;
};