type Foo = { };

type Foo[[T]] = {
  get -> T;
};

class A[[T]] { };
class A[[T]] (q) B[[T]] (p) -> Foo { };
class A[[T]] -> type { } { };
class A[[T]] -> Foo[[T]] { };

A(5);

method a[[T,H]](p: Number) b (q: String) -> Boolean {} ;

method a -> Unknown { };

def a = 5;
def a : Unknown = 5;
var a := 5;
var a;
var a : Unknown;
var a : Unknown := 5;