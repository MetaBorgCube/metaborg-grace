method t029_foo(a)bar(b) {
    print(a + b);
};
method t029_sumOf(a,b)isSumOf(c,d) {
    (a + b) == (c + d);
};

t029_foo(3)bar(5);

def x = object {
    var value := 4;
    method valueBetween (lower) and (upper) {
        (self.value >= lower) && (self.value <= upper);
    };
};

print(x.valueBetween(3)and(5));
print(x.valueBetween (1) and (3));
print(t029_sumOf(3,4)isSumOf(2,5));
