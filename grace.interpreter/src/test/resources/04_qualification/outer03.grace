object {
    def a = 5;
    object {
        object {
            var b := 6;
            object {
                method c { 7; };
                object {
                    print(a);
                    print(b);
                    print(c);
                };
            };
        };
    };
};
