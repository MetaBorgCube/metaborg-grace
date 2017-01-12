method t037_identity(a) {
    a;
};

def a = object {
    method prefix! {
        false;
    };
    method prefix!! {
        "OK";
    };
};

print (!a);
print (!(t037_identity(a)));
print (!(!a));
print (!!a);