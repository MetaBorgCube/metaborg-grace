class cons(hd', tl') {
    method hd { hd'; };
    def tl is public = tl';
    method extract { [hd', tl']; };
};

def a = cons(3, 4);
def b = cons(6, 7);
def ae = a.extract;
def be = b.extract;

print (ae);
print (a.hd);
print (a.tl);
print (be);
print (b.hd);
print (b.tl);