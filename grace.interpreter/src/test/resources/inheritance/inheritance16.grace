method A {
    object {
        method TRAIT {
            object {
              def msg is public = "hello";
            };
        };
    };
};

A.TRAIT;

def obj = object {
  inherit A.TRAIT;
  
};

print(obj.msg);