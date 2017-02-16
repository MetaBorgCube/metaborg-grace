type A = {
    f -> String;
};

method q -> A {
    object {
        method f { 5; };
        // an object /w an f that returns a number
    };
};

print(A.match(q)); // still matches