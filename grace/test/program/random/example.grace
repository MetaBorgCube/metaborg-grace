var testing := test;
var othertest;
var variable;
var test;
def constant = test;

def constant: Number = 5;
var variable: Number := 5;

var value := true;

def x =
    mumble "3"
    fratz 7; // note the call here is mumble_fratz("3", 7);
while {stream.hasNext;} do {
    print(stream.read);
};

// this could be the definition of mumble_fratz(_, _)
method muble (a: String) fratz (b: Number) { a +*+ b; };

var value := ... ; // i don't know yet :)

var typed: Number;
var typed: Number := 5;

var with'prime;
var with_underscore;
var endwith';
var endwith_; // comment

var block := { 5; };
var block := { a + 5; };
var block := { 5 + 5; };
var block := {};
var block := { a -> 5; };
var block := { a' -> a' + 5; };
var block := { a: Number -> a + 5; };

var block := { a, b -> a + b; };
var block := { a: Number, b: Boolean -> a + b; };



method ifthen(cond, blk) {
    cond.ifTrue(blk);
};


method ifthenelse(cond, blk1, blk2) {
    cond.ifTrue(blk1) ifFalse(blk2);
};

var a := self;
var a := self.value;
var a := fefe.value;
var a := fefe.value(2);
var a := fefe.bar(1, 2, 6);
var a := fefe.bar(123232, 223, 632);
var a := fefe.bar(123.232, 22.3, 6.32);
var a := self.bar(1,2,6);
var a := self.doThis_timesTo(3, "foo");
var a := self.doWhile({ self.call; }, { self.cond; } );
var a := self.doWhileLimit({ self.call; }, { self.cond; }, 5 );
var a := self + 1;
var a := ! self;

var a := self.draw(2);
var a := self.draw(2,3);
var a := self.draw(2,3,"stringa");
var a := "stringa";
var a := self.draw 5;
var a := draw 5; // implicit call on self
var a := self.draw "string";
var a:=self;
var a:=self.draw;

var a := self.som;
var a := self.draw "hoi";

var a := self.some 4.62;
var a := some 4.56;
var a := some 23.25e24;
var a := some 24.24e-24;
var a := some 2.4e-4;
var a := some 0x24;
var a := some 23Xff;

var a := self.some(4.62);
var a := some(4.56);
var a := some(23.25e24);
var a := some(24.24e-24);
var a := some(2.4e-4);
var a := some(0x24);
var a := some(23Xff);

var a := some(235);
var a := b[[T]]("s");
var a := some [[Type]] (235);
var a := some [[ Type ]] (2);
var a := some [[ Type ]] (2);

var a := some [[ Type, OtherType ]] (2);

var a := some [[ T, Q, Z ]] (2);

var a := some [[ T, Q, Z ]] 2;
var a := some [[ T, Q, Z ]] "gg";

var a := some 1;
var a := some (a);
var a := 2 + 2;
var a := !a;

var a := --a;

var a := some (2 + 2);

var a := (-2) + 2;

var a := (-2) + (2 * 2);

var a := some(2 + 2);


var a := some [[ T, Q, Z ]] (2 + 2);


var a := b[[T]] 5;
var a := some[[Type]];
var a := some[[Type]] 5.5;
var a := some [1, 2, 3, 4];

var a := some [[1,2,3]];

var a := some (5 > 3);


var a := some [[1,2,3], [4,5,6]];

var a := ...;

def unnamedCat = "string";

def unnamedCat = object {
    def colour : Colour = Colour.tabby;
    def name : String = "Unnamed";
    var miceEaten := 0;
    method lala:= (nom:Number) { miceEeten := nom; };
    method eatMouse { miceEaten := miceEaten + 1; };
    method eatMouse { miceEaten := miceEaten - 1; };
};

unnamedCat.lala:= 5;

var a := set [1, 2, 3, 4];
def a = sequence [1, 2, 3, 4];

set [1,2,3,4,5];

sequence [1,2,3,4,5];



a := -5;

a := -b;

-5;

-a;

--a;

---a;

a := ---5;

a := -a;


a := 5;

b := b (a);

b := b 5;

b := b(5);

b := b - 1;

def a = 5;

def a = - b.squared;

def constant = valueOf {
    def local1 = ...;
    def local2 = ...;
    complicated (locals);
};

sumSq[[Number]](10.i64, 20.i64);

a := !b;


sumSq(10.i64, 10.i64);

sumSq[[Number]](10);

sumSq(self.i64);

sumSq(b.i64, a.i64);

method i64 { self.i64; };

var i64 := 5;

def Error = Exception.refine "Error";
def RuntimeError = Error.refine "RuntimeError";
def LookupError = RuntimeError.refine "LookupError";
def ArgumentTypeError = RuntimeError.refine "ArgumentTypeError";
def InsufficientArgumentsError = RuntimeError.refine "InsufficientArgumentsError";

if (background.darkness > 0.7) then {
    fontColor := white;
} elseif { background.darkness < 0.3; } then {
    fontColor := black;
} else {
    fontColor := red;
};
