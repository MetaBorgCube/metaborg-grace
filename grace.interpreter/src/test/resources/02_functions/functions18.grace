method f(i) {
  var loc := i + 1;
  if(i < 10) then {
    f(i + 1);
    print(loc);
  } else {
    print("done");
  };
};

f(0);