def a = 3;
object {
    def me = self;
    object {
        print(me.a);
    };
};