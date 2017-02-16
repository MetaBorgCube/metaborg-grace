method f (a: type { f; }, b: type { g; }) -> type { h; } {
  object {
    method h { };
  };
};

f(object {
  method f { };
}, object {
  method g { };
});
