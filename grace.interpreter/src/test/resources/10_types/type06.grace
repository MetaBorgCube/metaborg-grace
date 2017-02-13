def a = object {
    var a := 5;
};

type A = {
    a;
    a:=(_);
};

print(A.match(a)); // true/successful