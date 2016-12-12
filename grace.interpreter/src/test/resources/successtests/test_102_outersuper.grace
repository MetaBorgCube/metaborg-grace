def a = object {
    method new {
        object {
            method test {
                printerA'smethod;
            };
        };
    };
    method printerA'smethod {
        print "Hello";
    };
};
def b = object {
    method new {
        object {
            inherit a.new;
            method test2 {
                printerB'smethod;
            };
        };
    };
    method printerB'smethod {
        print "world";
    };
};

def ab = b.new;
ab.test;
ab.test2;