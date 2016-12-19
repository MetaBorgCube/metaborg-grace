class a_103 {
    method foo { "world"; };
};

class b_103 {
    inherit a_103;
    method bar { "hello {foo}"; };
};

class c_103 {
    inherit b_103;
    method quux { "X " ++ bar; };
};

class d_103 {
    inherit c_103;
    method foo is override { "Nyssa"; };
};

type T_103 = {
    foo -> String
    quux -> String
};

def x = b_103;
print (x.bar);
def y = c_103;
print(y.quux);
def z = d_103;
print(z.quux);