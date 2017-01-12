def o = object {
    method earlyreturn {
        print("A");
        return(5);
        print("B");
    };
};

print(o.earlyreturn);