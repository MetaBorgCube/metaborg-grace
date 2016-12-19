object {
  method base {
      object {
          def param is public = 100;
          def x1 is public = self.param;
      };
  };
  
  def myobj = object {
      inherit outer.base;
      
      def param is public = 500;
  };
  
  print(self.myobj.param);
  print(self.myobj.x1);
};