type Foo = { };

type Foo[[T]] = {
  get -> T;
};

class A { };
class A -> Foo { };
class A -> type { } { };
class A -> Foo[[Number]] { };

A(5);

method a[[T[[T']],H]](p: Number) b[[Q]](q: String) -> Boolean {} ;