class printer {
  method print(text) {
    base_print(text);
  };
};

object {
  inherit printer;
  print "hey";
};