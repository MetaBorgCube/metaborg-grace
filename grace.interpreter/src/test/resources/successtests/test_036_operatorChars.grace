def a = object {
    method -&|:$#\%^@?*/+!~ (other) { "OK"; };
    method \ (other) { "backslash"; };
    method # (other) { "#"; };
    method % (other) { "%"; };
    method ~?! (other) { "~?!"; };
    method /\ (other) { "and"; };
    method \/ (other) { "or"; };
};
print (a -&|:$#\%^@?*/+!~ 3);
print (a \ 4);
print (a # 4);
print (a % 5);
print (a ~?! 6);
print (a /\ 4);
print (a \/ 5);