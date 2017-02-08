method f2 {
  object {
    def b = 123;
    
    print(b);
  };
};

object {
  inherit f2;
  def b = 999;
};
