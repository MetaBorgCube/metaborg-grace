method h022_concat(l) { l.fold{acc, each -> acc ++ each;} startingWith ""; };

print(h022_concat ["hello", " ", "world"]);
