def xxx = 42;

method CinA {
  object {
    def inCinA is public = xxx;
  };
};


method CinA2 {
  object {
    inherit CinA;
  };
};

print(CinA2.inCinA);
