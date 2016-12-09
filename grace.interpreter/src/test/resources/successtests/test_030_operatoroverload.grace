var factoryObj;

factoryObj := object {
    method create(n) {
        object {
            var value is public := n;
            method +(other) {
                factoryObj.create(self.value + other.value);
            };
            method asString {
                self.value.asString;
            };
        };
    };
};

var a := factoryObj.create(3);
var b := factoryObj.create(4);
print(a);
print(b);
print(a + b);
