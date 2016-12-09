class cat(namex) {
    def name = namex;
    method purr {out("Purr"); };
    method mew {out("Meow"); };
};

var c := cat "Macavity";

c.purr;
c.mew;
