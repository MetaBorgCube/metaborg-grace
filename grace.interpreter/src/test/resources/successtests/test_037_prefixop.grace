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

print (!a) shouldBe (false);
print (!(t037_identity(a))) shouldBe (false);
print (!(!a)) shouldBe (true);
print (!!a) shouldBe "OK";