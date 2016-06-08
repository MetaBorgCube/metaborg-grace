method prefix -- (a) { 1; };

for (1 .. 10) do { j ->
    print;
};

--[[T]]a;

self.a(5);

method met (a) { "ret"; } where A <: Hashable;

method met { "ret"; };

method square (value) {
    value *  value;
};

class classname(a: Type1) secondpart(b: Type2) {
    some(expressions);
    def colour = 5;
};
method classname(a) {
    object {
       some(expressions);
       def colour = 5; 
    };
};

def a = classname(5);

{
  [[T]] a: Number -> a*a;
};

{
  5;
};

method first[[Q]] is public (a: Number)
    second[[R]] (b: Boolean) { "ret2"; };

//methodcanonical first_second(a,b) { "ret2"; };

print(square 5);

// 'full' method call
receiver.met(5, 6);

// method call with operator
5 + 6;

--5;

--b;

//self.met(5,6);

// implicit on self
//a 5;

"ho\"i!";

a [1,2,3];
//
//a "hoi" b "doei!";
//
//--a;
//
receiver.if[[T, R]] (condition) then[[S]] {4;}
else[[Q]] {5;};
if(condition) then{ 3;}
elseif{condition2;} then{2;}
else{1;};
 
//
var a := 5;

print "hoi";

for (1 .. 10) do { j ->
    print("integer " ++ j);
};

var list := set [1,2,3,4,5,6];
var list;
def list = set [1,2,3,4,5,6];

for (list) do { j -> 
  print("from set " ++ j);
};

print(list.asDebugString);

color.r (255) g (0) b (255);

color.r 255 g 0 b 255;

method swap (i: Number, j: Number) in (numList: List[[Number]]) -> Done {
    def temp: Number = numList.at (i);
    numList.at (i) put (numList.at (j));
    numList.at (j) put (temp);
};

