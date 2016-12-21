object {
  method base {
      object {
          def overriddenfield is public = 100;
          
          // this initializer should see the local value of the overriddenfield
          def otherfield is public = self.overriddenfield;
      };
  };
  
  def myobj = object {
      inherit outer.base;
      
      def overriddenfield is public = 500;
  };
  
  print(self.myobj.overriddenfield);
  print(self.myobj.otherfield);
};