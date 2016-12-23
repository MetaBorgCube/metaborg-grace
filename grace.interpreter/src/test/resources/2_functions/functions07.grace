class Counter {
    
    method count(x) {
        {
            print(x);
            def y = x + 1;
            {
                self.count(y).apply;
            };
        };
    };
};

self.Counter.count(0).apply.apply.apply.apply.apply.apply;
