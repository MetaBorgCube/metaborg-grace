def x is public = 13;

def l0 is public = object {
  def l1 is public = object {
    def l2 is public = object {
    
      method B {
        object {
          method boo {
            x;
          };
        };
      };
      
      method A {
        object {
            inherit B;
            
            def x is public = 42;
        };
      };
    };
  };
};
  

print(l0.l1.l2.A.boo);