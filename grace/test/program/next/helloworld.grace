def d = 0;

method f {
  base_print "begin f";
  def a = 1;
  def b = 2;
  def c = 3;
  base_print(a);
  base_print(d);
  base_print "end f";  
};

method g {
  base_print "begin g";
  def a = 4;
  def b = 5;
  def c = 6;
  base_print "whats wrong with you?";
  base_print(a);
  base_print(d);
};

f;
g;
