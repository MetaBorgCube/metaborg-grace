// self: 2147483647
// outer: 2147483648

def x is public = 1;

method B {
  // self: 2147483647
  // outer: 2147483648
  object {
    method coo {
      // self: 2147483646
      // outer: 2147483647
      
      // outer actually: -2147483648
    };
  };
};

method A {
  // self: 2147483647
  // outer: 2147483648
  object {
      inherit B;
      // self: 2147483646
      // outer: 2147483647
      def x is public = 42;
      
      method boo {
          // self: 2147483646
          // outer: 2147483647
          outer.x;
      };
  };
};

print(A.coo);