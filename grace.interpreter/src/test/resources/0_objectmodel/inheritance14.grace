method classA {
    object {
      
    };
};

method classB {
    object {
        inherit classA;
        
        method m2 {
          
        };
    };
};

method classC {
    object {
        inherit classB;
        
        method m1 {
           d1 := d1 + 1; // should fail here because minigrace fails?
           d1;
        };
        
        var d1 := 0 + m1;
    };
};

print(classC.m1);