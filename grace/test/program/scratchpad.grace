class super {
  method a { base_print(4); };
};

method out { base_print(5); };

method b { out; };

object {
  inherit super;
  method c { base_print(6); };
  method d(a, b) { base_print(a); base_print(b); };
  a;
  b;
  c;
  d(7,8);
};
