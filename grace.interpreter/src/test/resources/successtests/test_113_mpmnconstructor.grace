object {
    class named(aName) coloured (aColour) {
        def colour = aColour;
        def name = aName;
        var miceEaten := 0;
        method describe {
            print "{name} is a {colour} cat";
        };
    };
    
    def myCat = named "Timothy" coloured ("black");
    def yourCat = named "Gregory" coloured ("tortoiseshell");
    
    myCat.describe;
    yourCat.describe;
    
};