class parent {
    def s = "inherited";
    def p = "also inherited";
};
trait prop1 {
    method p { "trait1"; };
};
trait prop2 {
    method q { "trait2"; };
};

def y = object {
    def e = "enclosed";
    
    def x = object {
        inherit parent; // may not contain properties from enclosing scope (not s)
        use prop1; // overrides inherit
        use prop2; // may not have conflicting properties with prop1 (not p) (error)
        def o = "self (x)";
        def p = "local overrides trait";
        def e = "local ovverides enclosing";
        print(s); // or self.s
        print(p); // or self.p
        print(q); // or self.p
        print(e); // or outer.e NOT self.e
        print(o); // or self.e
    };
};