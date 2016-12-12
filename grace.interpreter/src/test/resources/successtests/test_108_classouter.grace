method t108_a {
  print("out");
};

def A = object {
    class new {
        method b { t108_a; };
    };
};

A.new.b;