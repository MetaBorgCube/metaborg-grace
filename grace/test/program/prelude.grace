
method if(cond) then(blk) {
    cond.ifTrue(blk);
};

method if(cond) then(blk1) else(blk2) {
    cond.ifTrue(blk1) ifFalse(blk2);
};

method if(cond1) then(blk1) elseif(cond2) then(blk2) {
    cond1.ifTrue(blk1) ifFalse {
        cond2.apply.ifTrue(blk2);
    };
};

method if(cond1) then(blk1) elseif(cond2) then(blk2) else(elseblk) {
    cond1.ifTrue(blk1) ifFalse {
        cond2.apply.ifTrue(blk2) ifFalse(elseblk);
    };
};

method if(cond1) then(blk1) elseif(cond2) then(blk2)
        elseif(cond3) then(blk3) {
    cond1.ifTrue(blk1) ifFalse {
        cond2.apply.ifTrue(blk2) ifFalse {
            cond3.apply.ifTrue(blk3);
        };
    };
};

method if(cond1) then(blk1) elseif(cond2) then(blk2)
        elseif(cond3) then(blk3) else(elseblk) {
    cond1.ifTrue(blk1) ifFalse {
        cond2.apply.ifTrue(blk2) ifFalse {
            cond3.apply.ifTrue(blk3) ifFalse(elseblk);
        };
    };
};

method if(cond1) then(blk1) elseif(cond2) then(blk2)
        elseif(cond3) then(blk3) elseif(cond4) then(blk4) {
    cond1.ifTrue(blk1) ifFalse {
        cond2.apply.ifTrue(blk2) ifFalse {
            cond3.apply.ifTrue(blk3) ifFalse {
                cond4.apply.ifTrue(blk4);
            };
        };
    };
};

method if(cond1) then(blk1) elseif(cond2) then(blk2)
        elseif(cond3) then(blk3) elseif(cond4) then(blk4) else(elseblk) {
    cond1.ifTrue(blk1) ifFalse {
        cond2.apply.ifTrue(blk2) ifFalse {
            cond3.apply.ifTrue(blk3) ifFalse {
                cond4.apply.ifTrue(blk4) ifFalse(elseblk);
            };
        };
    };
};

method if(cond1) then(blk1) elseif(cond2) then(blk2)
        elseif(cond3) then(blk3) elseif(cond4) then(blk4)
        elseif(cond5) then(blk5) {
    cond1.ifTrue(blk1) ifFalse {
        cond2.apply.ifTrue(blk2) ifFalse {
            cond3.apply.ifTrue(blk3) ifFalse {
                cond4.apply.ifTrue(blk4) ifFalse {
                    cond5.apply.ifTrue(blk5);
                };
            };
        };
    };
};

method if(cond1) then(blk1) elseif(cond2) then(blk2)
        elseif(cond3) then(blk3) elseif(cond4) then(blk4)
        elseif(cond5) then(blk5) else(elseblk) {
    cond1.ifTrue(blk1) ifFalse {
        cond2.apply.ifTrue(blk2) ifFalse {
            cond3.apply.ifTrue(blk3) ifFalse {
                cond4.apply.ifTrue(blk4) ifFalse {
                    cond5.apply.ifTrue(blk5) ifFalse(elseblk);
                };
            };
        };
    };
};

method while2(cond) do(blk) {
    cond.apply.ifTrue {
        blk.apply;
        while(cond)do(blk);
    };
};

method while(cond) do(blk) {
    base_while_do(cond, blk);
};

method _range(from, to) {
    rangeStep(from, to, 1);
};

method _rangeStep(from, to, by) {
    object {
        method do(blk) {
            var x := from;
            while { x <= to; } do {
                blk.apply(x);
                x := x + by;
            };
        };

        method ..(ns) {
            rangeStep(from, to, by * ns);
        };
    };
};

method for(iterable) do(blk) {
    iterable.do(blk);
};

type String = type {
    asString -> String;
    ++(o : String) -> String;
};

type Number = type {
    asString -> String;
    +(o : Number) -> Number;
    *(o : Number) -> Number;
    -(o : Number) -> Number;
    /(o : Number) -> Number;
    ^(o : Number) -> Number;
    %(o : Number) -> Number;
};

type Boolean = type {
    ifTrue(b) -> Done;
    ifFalse(b) -> Done;
    ifTrue(b1) ifFalse(b2);
    &&(o : Boolean) -> Boolean;
    ||(o : Boolean) -> Boolean;
    andAlso(b);
    orElse(b);
};

//method _SuccessfulMatch(obj, *bindings) {
//    _SuccessfulMatchWithBindings(obj, bindings);
//};

method SuccessfulMatchWithBindings(obj, bindings') {
    object {
        def succeeded is public = true;
        def asString is public = "SuccessfulMatch[{obj}]";
        def bindings is public = bindings';
        method result {
            obj;
        };
        method ifTrue(blk) {
            blk.apply;
        };
        method ifFalse(blk) { };
        method ifTrue(blk) ifFalse(_) {
            blk.apply;
        };
    };
};

method FailedMatch(obj) {
    object {
        def succeeded is public = false;
        def asString is public = "FailedMatch[{obj}]";
        method result {
            obj;
        };
        method ifFalse(blk) {
            blk.apply;
        };
        method ifTrue(blk) { };
        method ifTrue(_) ifFalse(blk) {
            blk.apply;
        };
    };
};

method MatchResultFromBoolean(bool, obj) {
    if (bool) then {
        SuccessfulMatch(obj);
    } else {
        FailedMatch(obj);
    };
};

method OrPattern(l, r) {
    object {
        method match(o) {
            def mr = l.match(o)
            if (mr) then {
                return SuccessfulMatch(mr.result);
            };
            def mr2 = r.match(o);
            if (mr2) then {
                return SuccessfulMatch(mr2.result);
            };
            FailedMatch(o);
        };
        method |(o) {
            OrPattern(self, o);
        };
        method &(o) {
            AndPattern(self, o);
        };
    };
};

method AndPattern(l, r) {
    object {
        method match(o) {
            def mr = l.match(o);
            if (mr) then {
                // TODO: This should handle passing through destructured values
                def mr2 = r.match(o);
                if (mr2) then {
                    return SuccessfulMatchWithBindings(o,
                        mr.bindings ++ mr2.bindings);
                };
                return mr2;
            };
            return mr;
        };
        method |(o) {
            OrPattern(self, o);
        };
        method &(o) {
            AndPattern(self, o);
        };
    };
};

method BindingsDiscardPattern(p) {
    object {
        method match(o) {
            def mr = p.match(o);
            if (mr) then {
                return SuccessfulMatch(mr.result);
            };
            return mr;
        };
    };
};

//method _list(*x) {
//    x;
//};

//method _MatchAndDestructuringPattern(pat, *items) {
//    object {
//        method match(o) {
//            def mr = pat.match(o)
//            mr.ifFalse {
//                return FailedMatch(o)
//            }
//            var retBindings := _list
//            items.with(mr.bindings) do { ipat, ival ->
//                def mr2 = ipat.match(ival)
//                if (mr2) then {
//                    retBindings := retBindings ++ mr2.bindings
//                } else {
//                    return FailedMatch(o)
//                }
//            }
//            SuccessfulMatchWithBindings(mr.result, retBindings)
//        }
//    }
//}

method _VariablePattern {
    object {
        method match(o) {
            SuccessfulMatch(o, o);
        };
    };
};

method match(target) case(case1) {
    var mr := case1.match(target);
    if (mr) then {
        return mr.result;
    };
    fail "match-case fell through";
};

method match(target) case(case1) case(case2) {
    var mr := case1.match(target);
    if (mr) then {
        return mr.result;
    };
    mr := case2.match(target);
    if (mr) then {
        return mr.result;
    };
    fail "match-case fell through";
};

method match(target) case(case1) case(case2) case(case3) {
    var mr := case1.match(target);
    if (mr) then {
        return mr.result;
    };
    mr := case2.match(target);
    if (mr) then {
        return mr.result;
    };
    mr := case3.match(target);
    if (mr) then {
        return mr.result;
    };
    fail "match-case fell through";
};

method match(target) case(case1) case(case2) case(case3) case(case4) {
    var mr := case1.match(target);
    if (mr) then {
        return mr.result;
    };
    mr := case2.match(target);
    if (mr) then {
        return mr.result;
    };
    mr := case3.match(target);
    if (mr) then {
        return mr.result;
    };
    mr := case4.match(target);
    if (mr) then {
        return mr.result;
    };
    fail "match-case fell through";
};

method match(target) case(case1) case(case2) case(case3) case(case4)
        case(case5) {
    var mr := case1.match(target);
    if (mr) then {
        return mr.result;
    };
    mr := case2.match(target);
    if (mr) then {
        return mr.result;
    };
    mr := case3.match(target);
    if (mr) then {
        return mr.result;
    };
    mr := case4.match(target)
    if (mr) then {
        return mr.result;
    };
    mr := case5.match(target)
    if (mr) then {
        return mr.result;
    };
    fail "match-case fell through";
};

method fail(msg) {
    RuntimeError.raise(msg);
};

def Error = Exception.refine "Error";
def RuntimeError = Error.refine "RuntimeError";
def LookupError = RuntimeError.refine "LookupError";
def ArgumentTypeError = RuntimeError.refine "ArgumentTypeError";
def InsufficientArgumentsError = RuntimeError.refine "InsufficientArgumentsError";

method try(b) finally(f) {
    base_try_catch_finally(b, f);
};

method try(b) catch(e1) finally(f) {
    base_try_catch_finally(b, f, e1);
};

method try(b) catch(e1) catch(e2) finally(f) {
    base_try_catch_finally(b, f, e1, e2);
};

method try(b) catch(e1) catch(e2) catch(e3) finally(f) {
    base_try_catch_finally(b, f, e1, e2, e3);
};

method try(b) catch(e1) catch(e2) catch(e3) catch(e4) finally(f) {
    base_try_catch_finally(b, f, e1, e2, e3, e4);
};

method try(b) catch(e1)  catch(e2) catch(e3) catch(e4) catch (e5) finally(f) {
    base_try_catch_finally(b, f, e1, e2, e3, e4, e5);
};

method try(b) catch(e1) {
    base_try_catch_finally(b, {}, e1);
};

method try(b) catch(e1) catch(e2) {
    base_try_catch_finally(b, {}, e1, e2);
};

method try(b) catch(e1) catch(e2) catch(e3) {
    base_try_catch_finally(b, {}, e1, e2, e3);
};

method try(b) catch(e1) catch(e2) catch(e3) catch(e4) {
    base_try_catch_finally(b, {}, e1, e2, e3, e4);
};

method try(b) catch(e1) catch(e2) catch(e3) catch(e4) catch (e5) {
    base_try_catch_finally(b, {}, e1, e2, e3, e4, e5);
};

