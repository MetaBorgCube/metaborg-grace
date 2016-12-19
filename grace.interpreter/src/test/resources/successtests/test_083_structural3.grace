type A = {
    +(other : Number) -> A
    asString -> String
};

var a := 3;
a := a + 5;
print(a);