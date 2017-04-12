method a {
  print("A");
  b({ return; });
  print("B");
};

method b(block) {
  block.apply;
};

a;