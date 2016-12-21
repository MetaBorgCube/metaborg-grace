def x is public = 13;

def l0 is public = object {
    def l1 is public=  object {
        method f {
            outer.outer.x;
        };
    };
};

print(self.l0.l1.f);