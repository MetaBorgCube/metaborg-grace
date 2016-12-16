method A {
    object {
        method TRAIT {
            object {
              def msg is public = "hello";
            };
        };
    };
};

self.A.TRAIT;

def obj = object {
  inherit outer.A.TRAIT;
  
};

print(self.obj.msg);