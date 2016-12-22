if (true) then { print "a"; };
if (true) then { print "a"; } else { print "b"; };
if (true) then { print "a"; } elseif { false; } then  { print "b"; };
if (a,b,c) then (d,e,f) else (g);

//match("foo")
//    case  { "hello" -> print("2"); }
//    case { y : OtherType -> print(y); }
//    case { ( call ) -> print("1"); }
//    case ( { _ : Unknown -> print("Last"); });
//
//{m_lifted ->
//    if { String.match(m_lifted) && m_lifted == "hello"; } then {
//        print("2");
//    } elsif { OtherType.match(_m_lifted); } then {
//      print(y);
//    } elsif { Unknown.match(m_lifted) && m_lifted == (call); } then {
//      print("1");
//    } elsif { Unknown.match(_m_lifted); } then {
//      print("Last");
//    };
//}.apply("foo");
//        elseif { String.match(m_lifted) && {m_lifted == "hello";}; } then {
//        print("It matches 2");
//    } elseif { MyType.match(m_lifted); } then {
//        print (m_lifted);
//    } elseif { Unknown.match(m_lifted); } then {
//        print("Last resort");
//    };

//a && b;

//match("str") case { x : Num -> print (x); };

//match("str") case { "hello" -> print("It matches"); };
//
//{ lifted_ ->
//    
//    if { String.match(lifted_) && (lifted_ == "hello"); } then {
//        print("It matches 2");
//    };
//    
//}.apply("str");


//match(5)
//  case { y -> print(y); }
//  case { y : Type -> print(y); };
//
//{ lifted_ ->
//    
//    if { Number.match(lifted_) && (lifted_ == 3); } then {
//        print("It matches 2");
//    } elseif { Unknown.match(m_lifted); } then {
//        print("Last resort");
//    };
//    
//}.apply(5);