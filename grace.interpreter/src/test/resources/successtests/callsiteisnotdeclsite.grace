class s {
  def y = 1;
  method f { self.y; };
};

def a = object {
  inherit self.s;
  def y = 3;
  print(self.f);
};

// 3