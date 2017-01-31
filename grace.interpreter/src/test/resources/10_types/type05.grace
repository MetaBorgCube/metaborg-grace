type A = {
  f;
};

type B = A | type {
  g;
};

type C = A & type {
  h;
};

type D = A - type {
  f;
};

type E = A + type {
  j;
};

print(B.match(object{ method f {}; }));
print(B.match(object{ method g {}; }));
print(B.match(object{ method f {}; method g {}; })); // not
//print(C.match(object{ method f {}; }));
//print(A.match(object{ method f {}; }));
//print(A.match(object{ method f {}; }));