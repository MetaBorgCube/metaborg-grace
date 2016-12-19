{ print "hey"; };

{ };

{ a -> print "hey"; print "more"; };
{ _ -> print "hey"; };
{ _, _ -> print "hey"; };
{ a, b -> print "hey"; };
{ _, b -> print "hey"; };
{ a, _ -> print "hey"; };