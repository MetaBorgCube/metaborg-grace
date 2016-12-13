type A = {
    test(a:A) -> A
}
type B = {
    test(b:B) -> B
}

var a := object {
    method test(x) { x; };
};
var b := object {
    method test(x) { x; };
};
a.test(a);
b.test(b);
a.test(b);
b.test(a);
a := b;
b := a;
print "OK";