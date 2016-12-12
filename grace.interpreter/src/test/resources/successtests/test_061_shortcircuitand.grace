method t061A062_truemeth {
    print "Ran truemeth";
    true;
};
method t061A062_falsemeth {
    print "Ran falsemeth";
    false;
};

print(true && {t061A062_truemeth;} && {t061A062_truemeth;});
print(true && {t061A062_falsemeth;} && {t061A062_truemeth;});
print(false && {t061A062_truemeth;});