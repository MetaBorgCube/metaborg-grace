class OuterOuter {
    class Outer {
        def inOuter = 3;
        
        class Inner {
            def inInner is public = inOuter;
        };
    };
    
    class Side {
        inherit Outer;
    };
};

print(OuterOuter.Side.Inner.inInner);
print(OuterOuter.Outer.Inner.inInner);