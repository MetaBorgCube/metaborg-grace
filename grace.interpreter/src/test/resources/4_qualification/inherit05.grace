class A {
    method f { 5; };
};

def b'' = object {
    def b' is public = object {
        def b is public = object {
            class B {
                inherit A;
                print(f);
            };
        };
    };
};

b''.b'.b.B;
