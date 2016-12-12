type X = {
    foo(s : String) -> String
}
            
var x := object {
    method foo(s) {
        s;
    };
};
def y = x.foo("Hello");
print(y);