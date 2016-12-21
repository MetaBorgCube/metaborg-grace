//def y = { "foo"; };
//
//match(expr) case { _ -> };
//
//
match("foo") case { x : MyType -> print(x); }
    case  { "hello" -> print("It matches 2"); }
    case { y : OtherType -> print(y); }
    case { ( y.apply ) -> print("It matches 1"); }
    case ( { _ : Unknown -> print("Last resort"); });
//
//{m_lifted ->
//    if ( {
//        def v_lifted = y.apply;
//        (Number.match(m_lifted) && { Number.match(v_lifted); } && {v_lifted == m_lifted;}) ||
//        (String.match(m_lifted) && { String.match(v_lifted); } && {v_lifted == m_lifted;}) ||
//        (Boolean.match(m_lifted) && { Boolean.match(v_lifted); } && {v_lifted == m_lifted;});
//        }.apply
//    ) then {
//        print("It matches 1");
//    } elseif { String.match(m_lifted) && {m_lifted == "hello";}; } then {
//        print("It matches 2");
//    } elseif { MyType.match(m_lifted); } then {
//        print (m_lifted);
//    } elseif { Unknown.match(m_lifted); } then {
//        print("Last resort");
//    };
//}.apply("foo");

//a && b;

//match("str") case { x : Num -> print (x); };

match("str") case { "hello" -> print("It matches"); };

{ lifted_ ->
    
    if { String.match(lifted_) && (lifted_ == "hello"); } then {
        print("It matches 2");
    };
    
}.apply("str");