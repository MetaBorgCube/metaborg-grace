method h023_sum (x) and (y) {
    var sum := 0;
    x.do { each -> sum := sum + each; };
    y.do { each -> sum := sum + each; };
    sum;
};

        
print(h023_sum [1, 2] and [3, 4]);
