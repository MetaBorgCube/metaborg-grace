method a(v) {
  var b; 
  b := 3;
  +4;
};

object {
  inherit object {
    var c := 23; 
    def a = 2;
    def a = 12;
    
   };
  var b := 3;
  method f {
    b;
  };
  print "a";
};

method f {
  return 5.a;
};

method prefix& {
    out "Called prefix&";
};

var a := object {
    method field:=(val) {
        print("assigned " ++ val ++ " to field");
    };
};

a.field := 13;

trait h {
  method a { };
};