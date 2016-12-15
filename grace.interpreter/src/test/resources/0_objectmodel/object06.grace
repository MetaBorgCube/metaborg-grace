method base {
    object {
        def param is public = 100;
        def x1 is public = param;
    };
};

def myobj = object {
    inherit base;
    
    def param is public = 500;
};

print(myobj.param);
print(myobj.x1);
