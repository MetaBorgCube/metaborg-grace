def a = 5; // is not readable
def b is public = 5; // is readable
def c is writable = 5; // doesnt make sense
def d is confidential = 5; // not readable

var e := 5; // is not readble, not writeable
var f is public := 5; // is readable and writeable
var g is writable := 5; // is writeable, but not readable
var h is readable := 5; // is not writeable, but readble
var i is confidential := 5; // is not reabable, not writeable

method j { 5; }; // can access
method k is public { 5; }; // can access
method l is confidential { 5; }; // cannot access
method m is readable { 5; }; // can access
method n is writable { 5; }; // can access

def a is public, confidential = 5; //error
