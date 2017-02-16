print((type {
  f -> String;
}).match(object {
    method f -> Number { 5; };
}));

// this matches even though the return types dont
