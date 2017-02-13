import "animals" as a;
print "initialising cat module";
class cat {
    inherit a.mammal;
    method species { "cat"; };
};
print "cat module done";