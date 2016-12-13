match (5) case { 5 -> do; };
match (5) case { _ -> do; };
match (5) case { 5, _ -> do; };
match (5) case { x -> do; };
match (5) case { 5 -> do; };

match("foo")
    case { 5 -> print "yay"; }
    case { _ -> print "yay"; }
    case { ( y.apply ) -> print("It matches 1"); }
    case( { "hello" -> print("It matches 2"); })
    case( { _ : Unknown -> print("Last resort"); });
    
match("foo")
    case { ( y.apply ) -> print("It matches 1"); }
    case { ( y.apply ) -> print("It matches 1"); }
    case { true, false -> print "yay"; }
    case { 5 -> print("It matches 1"); }
    case ({ _ : Type, x : OtherType -> print("It matches 1"); })
    case( { "hello" -> print("It matches 2"); })
    case( { _ : Unknown -> print("Last resort"); });