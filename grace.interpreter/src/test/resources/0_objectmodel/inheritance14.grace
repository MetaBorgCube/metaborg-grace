method classA {
    object {
      
    };
};

method classB {
    object {
        inherit outer.classA;
        
        method m2 {
          
        };
    };
};

method classC {
    object {
        inherit outer.classB;
        
        method m1 {
           self.d1 := self.d1 + 1; // should fail here because minigrace fails?
           self.d1;
        };
        
        var d1 := 0 + self.m1;
    };
};

print(self.classC.m1);