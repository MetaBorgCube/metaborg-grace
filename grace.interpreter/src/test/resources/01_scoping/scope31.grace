object {

  def before = 1;
  
  class A {
      def a is public = outer.before;
      def b is public = outer.after;
  };
  
  print(self.A.a);
  
  def after = -1;
  
  print(self.A.b);
};