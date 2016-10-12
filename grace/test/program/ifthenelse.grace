method if (cond) then (blk1) else (blk2) {
  conf.ifTrue(blk1) ifFalse(blk2);
};

method if (cond) then (blk1) {
  conf.ifTrue(blk1);
};

def a = 3;

var a;

var a := 5;

a := 3;

method a(v) b(w) c(x) d(y) e(z) { 5; };

a 1 b 2 c 3 d 4 e 5;

a 1 b (a) c 3 d (4) e 5;

method a(v) b(w,x,y) c(z) { 5; };

a [1,2,3,4];

a ([1,2,3,4]);

a;

a 1;

a (1);

a true;
 
a (true);

a { 5; };

a ({ 5; });

a "hello";

a ("hello");

a b c (arg) d e;

a b;

a b c (a1, a2) d e 1;

a 1 b (a,3,b) c (5);

if true then { 5; };

if (true) then { 5; };

if (true) then ({ 5; });


if true then { 5; } else { 4; };

if (true) then { 5; } else { 4; };

if (true) then ({ 5; }) else { 4; };

if true then ({ 5; }) else { 4; };

if (true) then ({5;}) else ({ 4; });

