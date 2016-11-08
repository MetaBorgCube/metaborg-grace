
class a {
  def t = 2;
  method f { t; };
};

def t = 4 ;

class b {
  inherit a;
  base_print(f);
};

b;