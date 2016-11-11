def t = 4 ;
def c = 8;
def o = self;
def aa = object {
    
    class a {
      def c = t;
      def t = "aa";
      method f { c; };
      print("here");
    };
};

def bb = object {
    def c = "bb";
    class b {
      inherit aa.a;
      def c = 12;
      base_print(f);
      base_print(c);
//      base_print(outer.c);
    };
};

bb.b;