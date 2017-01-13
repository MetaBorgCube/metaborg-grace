class Nil {
    method isNil { true; };
};

class Node(k, v) {
    var left := Nil;
    var right := Nil;
    method setLeft(node) { self.left := node; self; };
    method setRight(node) { self.right := node; self; };
    method search(target) {
        if (k == target) then {
          v;
        } elseif {target < k && !(left.isNil);} then {
            left.search(target);
        } elseif {target > k && !(right.isNil);} then {
            right.search(target);
        } else {
            Nil;
        };
    };
    method isNil {
      false;
    };
};

def tree = Node(5,-5).setLeft(
             Node(2,-2).setLeft(Node(1,-1)).setRight(Node(3,-3).setRight(Node(4,-4)))
           ).setRight(
             Node(7,-7).setLeft(Node(6,-6)).setRight(Node(8,-8))
           );

print(tree.search(-1));
print(tree.search(1));
print(tree.search(2));
print(tree.search(3));
print(tree.search(4));
print(tree.search(5));
print(tree.search(6));
print(tree.search(7));
print(tree.search(8));
print(tree.search(234));
print(tree.search(235));
