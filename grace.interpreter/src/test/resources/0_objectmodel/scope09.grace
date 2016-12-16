def xxx = 42;

method CinA {
  object {
    def inCinA is public = outer.xxx;
  };
};


method CinA2 {
  object {
    inherit outer.CinA;
  };
};

print(self.CinA2.inCinA);
