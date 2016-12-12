var t120_theBlock;
method t120_bar(n) {
    if (n == 4) then {
        t120_theBlock := { return "YE"; };
    };
    if (n == 0) then {
        return "NO";
    };
    if (n == 1) then {
        t120_theBlock.apply;
    };
    "{t120_bar(n - 1);}{n;}";
};

print(t120_bar(5));
