var t136_count := 0;

method t136_baz {
    try {
        t136_bar { return 1; };
    } finally {
        print "OK.";
        t136_count := t136_count + 4;
    };
};

t136_baz;
match (t136_count)
    case { 7 -> print "OK; all finallies ran."; }
    case { 6 -> print "Failed; inner finally did not run."; }
    case { 5 -> print "Failed; middle finally did not run."; }
    case { 4 -> print "Failed; only outer finally ran."; }
    case { 3 -> print "Failed; outer finally did not run."; }
    case { 2 -> print "Failed; only middle finally ran."; }
    case { 1 -> print "Failed; only inner finally ran."; }
    case { 0 -> print "Failed; no finally blocks ran."; }
    case { _ -> print "Failed; something is very broken."; };