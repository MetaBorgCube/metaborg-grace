method pi { 3.14; };

method pi is confidential { 3.14; };

method pi is public { 3.14; };
method pi is writable { 3.14; };
method pi is readable { 3.14; };
method pi is readable -> Number { 3.14; };
method tau -> Number { 6.28; };
method double (a) { a * 2; };
method double (a) -> Double { a * 2; };
method square (a) { a * a; };
method cube (a) { a * b * c ; };
method add (a, b) { a + b; };

method add (a, b, c) { a + b + c; };
method add (a, b, c) { a * b * c; };
method add (a, b, c) { a - b - c; };
method add (a, b, c) { a / b / c; };

method add (a, b, c) { a + b * c; };
method add (a, b, c) { a * b + c; };

method add (a, b, c) { a + b - c; };
method add (a, b, c) { a - b + c; };

method add (a, b, c) { a + b * c; };
method add (a, b, c) { a * b + c; };

method add (a, b, c) { a + b / c; };
method add (a, b, c) { a / b + c; };

method add (a, b, c) { a * b - c; };
method add (a, b, c) { a - b * c; };

method add (a, b, c) { a * b / c; };
method add (a, b, c) { a / b * c; };

method add (a, b, c) { a - b / c; };
method add (a, b, c) { a / b - c; };

method add (a, b, c) { (a / b) / c; };
method add (a, b, c) { a / (b / c); };

method add (a, b) -> Number { a + b; };
method prefix - -> Number { 0 - a; };
method prefix - is confidential -> Number { 0 - a; };
method prefix - { 0 - a; };
method prefix - is confidential (a: Number) -> Number { 0 - a; };
method prefix - is confidential (a) { 0 - a; };
method prefix -- (a) -> Number { a - 1; };
method prefix -- (a) { a - 1; };


method if(cond) then(blk) {
    cond.ifTrue(blk);
};

method if(cond) then(blk1) else(blk2) {
    cond.ifTrue(blk1) ifFalse(blk2);
};


method catColoured (c) named (n) {
    object {
        inherit graceObject;
        def colour is public = c;
        def name is public = n;
        var miceEaten is readable := 0;
        method eatMouse {miceEaten := miceEaten + 1;};
        print "The cat {n} has been created.";
    };
};

method catColoured (c) named (n) {
    miceEaten := miceEaten - 1;
    print "nom";
};

method newShipStartingAt_endingAt(s:Point, e:Point) {
    // returns a battleship object extending from s to e. This object cannot
    // be asked its size, or its location, or how much floatation remains.
    assert ( (s.x == e.x) || (s.y == e.y) );
    def size = s.distanceTo(e);
    var floatation := size;
    object {
        method isHitAt(shot:Vector2D) {
            if_then_else(shot.onLineFrom_to(s, e), {
                floatation := floatation - 1;
                if (floatation == 0) then { self.sink; };
                true;
            }, { false; });
        };
        ...;
    };
};

method foo(a) {a; b; c;};
method foo(a, b, c) {a; b; c;};
method foo(a : T) {a; b; c;};
method foo(a : T, b : T, c : T) -> T {a; b; c;};
method foo(a, b, c) -> T {a; b; c;};
method foo(a : T, b : T, c : T) -> T {a; b; c;};
method foo_foo(a : T, b : T, c : T, a : T, b : T, c : T) -> T {a; b; c;};
method foo(a, b, c) {a; b; c;};
method foo_bar(a, b, c, d,e){a; b; c;};
method foo(a : T, b : T, c : T) -> T {a; b; c;};
method foo(a, b : T, c) -> F {a; b; c;};
method foo[[T]](a) {a; b; c;};
method foo[[TER,MIN,US]](a, b, c) {a; b; c;};
method foo[[TXE]](a : T) {a; b; c;};
method foo[[T,U,V]](a : T, b : T, c : T) -> T {a; b; c;};
method foo_foo[[T,U]](a : T, b : T, c : T, a : T, b : T, c : T) -> T {a; b; c;};

method +(x) {a; b; c;};
method ==(x) {a; b; c;};

method ++***&%&(x) {a; b; c;};
method +(x: T) {a; b; c;};
method +(x) -> T {a; b; c;};
method +(x : T) -> T {a; b; c;};

method prefix+ { a; b; c;};
method prefix + {a; b; c;};
method prefix++***&%& {a; b; c;};
method prefix ! {a; b; c;};

method foo:=(a) {a; b; c;};
//method bar :=(a) {a; b; c;};
method foo:=(a : T) {a; b; c;};
//method foo :=(a : T) -> T {a; b; c;};
method foo:=(a) -> T {a; b; c;};

{ [[T]] -> foo;};
{ [[T]] x : A -> foo;};

{ x : A, y:B -> foo;};
{ x:A, y:B -> foo;};
{ x:A,y:B->foo;};
{ x,y->foo;};
{ x -> foo;};
{ x:A,y:B->foo;};

{ [[T]] x : A, y:B -> foo;};

method foo:= [[T]] (x : T) { x; };
method foo:= [[T,U]] (x : T) { x; };
method foo:= [[T,U]] (x : T) -> T { x; };
method - [[T]] (x : T) -> T { x; };
method prefix- [[T]] -> T { x; };
method prefix- [[T]] { x; };

[];
[1,2,3];
[ "a", "a", "a", 1];

[[[1,2],[3,4]],[[5,6],[7,8]]];

method sumSq[[T]](a : T, b : T) -> T where T <: Numeric {
    (a * a) + (b * b);
};

method prefix- [[T]] -> Number { 0 - self; };

method for(iterable) do(blk) {
    iterable.do(blk);
};

method for(iterable) do(blk) {
    iterable.do(blk);
};

method SuccessfulMatchWithBindings(obj, bindings') {
    object {
        def succeeded is public = true;
        def asString is public = "SuccessfulMatch[{obj}]";
        def bindings is public = bindings';
        method result {
            obj;
        };
        method ifTrue(blk) {
            blk.apply;
        };
        method ifFalse(blk) { };
        method ifTrue(blk) ifFalse(_) {
            blk.apply;
        };
    };
};

method match(target) case(case1) case(case2) case(case3) {
    var mr := case1.match(target);
    if (mr) then {
        return mr.result;
    };
    mr := case2.match(target);
    if (mr) then {
        return mr.result;
    };
    mr := case3.match(target);
    if (mr) then {
        return mr.result;
    };
    fail "match-case fell through";
};

self.clear;
self.drawLineFrom (p1) to (p2);
self.drawLineFrom (origin) length (9) angle (pi/6);
self.movePenTo (x, y);
self.movePenTo (p);

self.drawLineFrom (p1) to (p2);
self.drawLineFrom (origin) length 9 angle (pi/6);

print "Hello World";

while {x < 10;} then {
    print [a, x, b];
    x := x + 1;
};

method if(cond) then(blk) {
    cond.ifTrue(blk);
};

method if(cond) then(blk1) else(blk2) {
    cond.ifTrue(blk1) ifFalse(blk2);
};

method if(cond1) then(blk1) elseif(cond2) then(blk2) {
    cond1.ifTrue(blk1) ifFalse {
        (cond2.apply).ifTrue(blk2);
    };
};
