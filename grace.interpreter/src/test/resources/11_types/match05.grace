print((type {
  f;
}).match(object {
    method g { };
}));

// this does not match

type A = {
    f → String;
}

method q → A {
    object {
        method f { 5; }
        "returning an object with an f that returns a number"
    }
};

print(A.match(q)) // still matches