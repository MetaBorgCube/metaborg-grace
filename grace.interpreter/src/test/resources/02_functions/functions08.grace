method codep {
    var counter := 0;
    object {
        method capture {
            object {
            
                method mkLeft {
                    {
                        print("Left:");
                        print(counter);
                        counter := counter + 1;
                        self.mkLeft;
                    };
                };
                
                method mkRight {
                    {
                        print("Right:");
                        print(counter);
                        counter := counter + 2;
                        self.mkRight;
                    };
                };
            };
        };
    };
};

def kidnapper = self.codep.capture;

var leftK := self.kidnapper.mkLeft.apply.apply.apply;
var rightK := self.kidnapper.mkRight.apply.apply.apply;

self.leftK.apply;
self.rightK.apply;
self.leftK.apply;
self.rightK.apply;
self.leftK.apply;


