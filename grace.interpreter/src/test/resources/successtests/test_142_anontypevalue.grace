if ( (type { y -> String; }).match(t142_x)) then {
    print(t142_x.y);
};

match(t142_x)
    case { z : type { y -> String;} -> print(z.y); };
    