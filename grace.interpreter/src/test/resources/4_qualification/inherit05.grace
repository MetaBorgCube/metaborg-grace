class A {
    method f { 5; };
};

def b'' = object {
    def b' = object {
        def b = object {
            class B {
                inherit A;
                print(f);
            };
        };
    };
};

b''.b'.b.B;
