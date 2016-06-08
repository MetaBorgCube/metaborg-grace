class mouse {
    var something := 20;
    print "the mouse has been created";
};

class catColoured_named(c, n) {
  def colour is public = c;
  def name is public = n;
  var miceEaten is readable := 0;
  method eatMouse {miceEaten := miceEaten + 1;};
  print "The cat {n} has been created.";
};


class baz {
    inherit bar;
    var something := 20;
};

class catColoured(c) named (n) {
    def colour is public = c;
    def name is public = n;
    var miceEaten is readable := 0;
    method eatMouse {miceEaten := miceEaten + 1;};
    print "The cat {n} has been created.";
};


def fergus = catColoured (colour.tortoiseshell) named "Fergus";
