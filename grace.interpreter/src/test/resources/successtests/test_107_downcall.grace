object {

    class aa {
      method a {
        b;
      };
      method b {
        print("A");
      };
    };
    
    class bb {
      inherit aa;
      method b {
        print("B");
      };
    };
    
    bb.a;
    
};