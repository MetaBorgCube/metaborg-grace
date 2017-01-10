def a = 24;
print(a);
object {
    print(a);
    object {
        print(a);
        object{
            method f(b) {
               print(a);
               print(b);
               object {
                 method g(c) {
                     print(a);
                     print(b);
                     print(c);
                 };
                 g(85);
               };
            };
            f(235);
        };
    };
};