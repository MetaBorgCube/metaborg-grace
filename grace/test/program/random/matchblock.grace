match (5) case { 5 -> do; };
match (5) case { _ -> do; };
match (5) case { 5, _ -> do; };
match (5) case { 5 -> do; };
match (5) case { 5 -> do; };

match("foo")
    case { ( y.apply ) → print("It matches 1") }
    case( { "hello" → print("It matches 2") })
    case( { _ : Unknown → print("Last resort") });