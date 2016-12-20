type Type = interface {
    match (o:Unknown) -> MatchResult;
    & (other:Type) -> Type;
    | (other:Type) -> Type;
    + (other:Type) -> Type;
    :> (other:Type) -> Boolean;
    <: (other:Type) -> Boolean;
    == (other:Type) -> Boolean;
    != (other:Type) -> Boolean;
    hash -> Number;
    asString -> String;
    asDebugString -> String;
    interfaces -> Sequence[[Interface]];
    foo;
};