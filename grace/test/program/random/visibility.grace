object {
    def a = 1; // Confidential access to a
    def b is public = 2; // Public access to b
    def c is readable = 2; // Public access to c
    var d := 3; // Confidential access and assignment
    var e is readable; // Public access and confidential assignment
    var f is writable; // Confidential access, public assignment
    var g is public; // Public access and assignment
    var h is readable, writable; // Public access and assignment
    method k is override {}; // overrides something
    method l is manifest { 5; }; // type statically determinable
};

var a is readable; //  readable
var b is writable; // public
var d := 3; // comment with confidential keyword
var b is writable, writable := a; // access public
var b is writable, writable; // public writeable
var f is readable, writable;
