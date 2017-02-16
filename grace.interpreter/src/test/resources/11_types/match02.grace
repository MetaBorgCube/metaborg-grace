type A = {
  f;
};

type B = A | type {
  g;
};

type C = A & type {
  h;
};

//type D = A - type {
//  f;
//};
//
//type E = A + type {
//  j;
//};

print(B.match(object{ method f {}; }));
print(B.match(object{ method g {}; }));
print(B.match(object{ method f {}; method g {}; })); // not
print "";

print(C.match(object{ }));
print(C.match(object{ method f {}; })); // not
print(C.match(object{ method h {}; })); // not
print(C.match(object{ method f {}; method h {};})); // not
//print "";
//
//print(D.match(object{ }));
//print(D.match(object{ method f {}; })); // not
//print "";
//
//print(E.match(object{ method f {}; }));
//print(E.match(object{ method j {}; }));
//print(E.match(object{ method f {}; method j {}; }));
