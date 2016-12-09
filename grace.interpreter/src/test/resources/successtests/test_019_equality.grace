print(1 == 1);

print(1 == 2);

print(2 == (1 + 1));

print(true == false);

print(true == true);

print(false == true);

print(false == false);

print("Hello" == "world");

print("Hello" == "Hello");

var x := object {
    var v := 1;
    method ==(other) { self.isMe(other); };
};
var y := object {
    var v := 1;
};

print(x == y);

print(x == x);

print("17" == 17);

print(17 == "17");

def NaN = 0/0;

print(NaN == NaN);
