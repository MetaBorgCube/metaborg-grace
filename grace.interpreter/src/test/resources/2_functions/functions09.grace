def o = object {
    method one {
        var x := 0;
        
        object {
            
            method incX {
                x := x + 1;
            };
    
            method getX {
                x;
            };
        };
    };
};

def oo = self.o.one;

print(self.oo.getX);
self.oo.incX;
print(self.oo.getX);