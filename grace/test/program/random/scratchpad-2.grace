def a = 14;
method b(a') { a'; 15;};
var c := 16;

print(a);
print(b(1));
print(c);
object {
  def h = 5;
  object {
      print(h);
  };
};