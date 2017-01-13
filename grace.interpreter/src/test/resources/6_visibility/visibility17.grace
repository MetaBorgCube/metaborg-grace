// not directly visibility modifier, but the main way
// privacy is achieved from inherited objects in grace.
// because there is no real 'private'.
class Factory {
  def secret is public = 24; // public is not even needed.
  class A {
    method getSecret(attempt) {
      secret;
    };
  };
};

class G {
  inherit Factory.A;
  print(secret);
};

G;
