method t13_foo {
    print("OK 1");
};
method t13_bar(x) {
    print("OK " ++ x);
};


t13_foo;
t13_bar(2);
t13_bar(3);