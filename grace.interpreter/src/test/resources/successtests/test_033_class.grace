class cat(namex) {
    def name = namex;
    method purr {print("Purr"); };
    method mew {print("Meow"); };
};

var c := cat "Macavity";

c.purr;
c.mew;
