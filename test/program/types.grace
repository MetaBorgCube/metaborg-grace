//type {
//    add(Number) -> Collection[[Number]];
//    removeLast -> Number;
//};
//
//type {
//    add(Unknown) -> Collection[[Unknown]];
//    removeLast -> Unknown;
//    size -> Number;
//};
//
//
//type {
//    colour -> Colour;
//    name -> String;
//    miceEaten -> Number;
//    miceEaten:= (n : Number) -> Done;
//};

type Boolean = {
    not -> Boolean;
    prefix ! -> Boolean;
    // the negation of self
    && (other: BlockOrBoolean) -> Boolean;
    // return true when self and other are both true
    || (other: BlockOrBoolean) -> Boolean;
    // return true when either self or other (or both) are true
};

type Number = {
    + (other: Number) -> Number;
    // sum of self and other
    - (other: Number) -> Number;
    // difference of self and other
    * (other: Number) -> Number;
    // product of self and other
    / (other: Number) -> Number;
    // quotient of self divided by other (in general, a fraction).
    % (other: Number) -> Number;
    // remainder r after integer division of self by other: 0 <= r <= self; see also divide
    // divide (other: Number) -> Number
    // quotient q of self after integer division by other: self = (other * q) + r, where r = self % other
    .. (last: Number) -> Sequence;
    // the Sequence of numbers from self to last
    < (other: Number) -> Boolean;
    // true iff self is less than other
    <= (other: Number) -> Boolean;
    // true iff self is less than or equal to other
    > (other: Number) -> Boolean;
    // true iff self is greater than other
    >= (other: Number) -> Boolean;
    // true iff self is greater than or equal to other
    prefix - -> Number;
    // negation of self
    compare (other:Number) -> Number;
    // a three-way comparison: -1 if (self < other), 0 if (self == other), and +1 if (self > other).
    // This is useful when writing a comparison function for sortBy
    inBase (base:Number) -> String;
    // a string representing self as a base number (e.g., 5.inBase 2 = "101")
    truncated -> Number;
    // number obtained by throwing away self's fractional part
    rounded -> Number;
    // whole number closest to self
    floor -> Number;
    // largest whole number less than or equal to self
    ceiling -> Number;
    // smallest number greater than or equal to self
    abs -> Number;
    // the absolute value of self
    isNan -> Boolean;
    // true if this Number is a NaN
};

type String = {
    * (n: Number) -> String;
    // returns a string that contains n repetitions of self, so "abc" * 3 = "abcabcabc"
    ++(other: Object) -> String;
    // returns a string that is the concatenation of self and other.asString
    < (other: String);
    // true if self precedes other lexicographically
    <= (other: String);
    // (self == other) || (self < other)
    == (other: Object);
    // true if other is a String and is equal to self
    != (other: Object);
    // !(self == other)
    > (other: String);
    // true if self follows other lexicographically
    >= (other: String);
    // (self == other) || (self > other)
    at(index: Number) -> String;
    // returns the character in position index (as a string of size 1); index must be in the range 1..size
    first -> String;
    // returns the first character of the string, as a String of size 1. String must not be empty
    asDebugString -> String;
    // returns self enclosed in quotes, and with embedded special characters quoted. See also quoted.
    asLower -> String;
    // returns a string like self, except that all letters are in lower case
    asNumber -> Number;
    // attempts to parse self as a number; returns that number, or NaN if it can't.
    asString -> String;
    // returns self, naturally.
    asUpper -> String;
    // returns a string like self, except that all letters are in upper case
    capitalized -> String;
    // returns a string like self, except that the initial letters of all words are in upper case
    compare (other:String) -> Number;
    // a three-way comparison: -1 if (self < other), 0 if (self == other), and +1 if (self > other).
    // This is useful when writing a comparison function for sortBy
    contains (other:String) -> Number;
    // returns true if other is a substring of self
    endsWith (possibleSuffix: String);
    // true if self ends with possibleSuffix
    filter (predicate: Block1[[String,Boolean]]) -> String;
    // returns the String containing those characters of self for which predicate returns true
    fold[[U]] (binaryFunction: Block2[[U,String,U]]) startingWith(initial: U) -> U;
    // performs a left fold of binaryFunction over self, starting with initial.
    // For example, fold a, b -> a + b.ord startingWith 0 will compute the sum
    // of the ords of the characters in self
    hash -> Number;
    // the hash of self
    indexOf (pattern:String) -> Number;
    // returns the leftmost index at which pattern appears in self, or 0 if it is not there.
    indexOf_ifAbsent (pattern:String, absent:Block0[[W]]) -> Number | W;
    // returns the leftmost index at which pattern appears in self; applies absent if it is not there.
    indexOf (pattern:String) startingAt (offset) -> Number;
    // like indexOf(pattern), except that it returns the first index >= offset, or 0 if pattern is not found.
    indexOf[[W]] (pattern:String) startingAt(offset) ifAbsent (action:Block0[[W]]) -> Number | W;
    // like the above, except that it answers the result of applying action if there is no such index.
    indices -> Sequence;
    // an object representing the range of indices of self (1..self.size)
    isEmpty -> Boolean;
    // true if self is the empty string
    iterator -> Iterator[[String]];
    // an iterator over the characters of self
    lastIndexOf (sub:String) -> Number;
    // returns the rightmost index at which sub appears in self, or 0 if it is not there.
    lastIndexOf_ifAbsent[[W]] (sub:String, absent:Block0[[W]]) -> Number | W;
    // returns the rightmost index at which sub appears in self; applies absent if it is not there.
    lastIndexOf[[W]] (pattern:String) startingAt (offset) ifAbsent (action:Block0[[W]]) -> Number | W;
    // like the above, except that it returns the rightmost index <= offset.
    map[[U]] (function:Block[[String,U]]) -> Iterable[[U]];
    // returns an Iterable object containing the results of successive applications of function to the
    // individual characters of self. Note that the result is not a String, even if type U happens to be String.
    // If a String is desired, use fold()startingWith "" with a function that concatenates.
    match (other:Object) -> SuccessfulMatch | FailedMatch;
    // returns SuccessfulMatch match if self matches other, otherwise FailedMatch
    ord -> Number;
    // a numeric representation of the first character of self, or NaN if self is empty.
    replace (pattern: String) with (new: String) -> String;
    // a string like self, but with all occurrences of pattern replaced by new
    size -> Number;
    // returns the size of self, i.e., the number of characters it contains.
    startsWith (possiblePrefix: String) -> Boolean;
    // true when possiblePrefix is a prefix of self
    startsWithDigit -> Boolean;
    // true if the first character of self is a (Unicode) digit.
    startsWithLetter -> Boolean;
    // true if the first character of self is a (Unicode) letter
    startsWithPeriod -> Boolean;
    // true if the first character of self is a period
    startsWithSpace -> Boolean;
    // true if the first character of self is a (Unicode) space.
    substringFrom (start: Number) size (max:Number) -> String;
    // returns the substring of self starting at index start and of length max characters,
    // or extending to the end of self if that is less than max. If start = self.size + 1 or
    // stop < start, the empty string is returned. If start is outside the range
    // 1..self.size+1, BoundsError is raised.
    substringFrom (start: Number) to (stop: Number) -> String;
    // returns the substring of self starting at index start and extending
    // either to the end of self, or to stop. If start = self.size + 1, or
    // stop < start, the empty string is returned. If start is outside the range
    // 1..self.size+1, BoundsError is raised.
    substringFrom (start: Number) -> String;
    // returns the substring of self starting at index start and extending
    // to the end of self. If start = self.size + 1, the empty string is returned.
    // If start is outside the range 1..self.size+1, BoundsError is raised.
    trim -> String;
    // a string like self except that leading and trailing spaces are omitted.
    quoted -> String;
    // returns a quoted version of self, with internal characters like " and \ and newline escaped,
    // but without surrounding quotes.
};

type Object = {
    == (other: Object) -> Boolean;
    != (other: Object) -> Boolean; // the inverse of ==;
    hash -> Number;
    match (other: Object) -> MatchResult;
    asString -> String;
    asDebugString -> String;
    :: (other:Object) -> Binding;
};

type MyParametricType[[A, B]] =
    type {
        at_put (_:A, _:B) -> Boolean;
        cleanup(_:B);
    } where A <: Hashable, B <: DisposableReference;

type MyType[[A]] =
    type {
        f(_:A);
    } where A <: Ha;
    
type Block0[[R]] = type {
    apply -> R;
};

type Block1[[T,R]] = type {
    apply(a:T) -> R;
};

type Block2[[S,T,R]] = type {
    apply(a:S, b:T) -> R;
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
