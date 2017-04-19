
def y = 100;
def o = object {
  
  // an object may not be a proxy for its outer scope
  print(self.y);
};
//print(o.y);