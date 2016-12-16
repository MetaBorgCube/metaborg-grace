class OuterOuter {
    class Outer {
        def inOuter = 3;
        
        class Inner {
            def inInner is public = outer.inOuter;
        };
    };
    
    class Side {
        inherit outer.Outer;
    };
};

print(self.OuterOuter.Side.Inner.inInner);
print(self.OuterOuter.Outer.Inner.inInner);