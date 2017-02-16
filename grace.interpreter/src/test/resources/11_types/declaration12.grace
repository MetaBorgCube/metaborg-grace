method f (a: type { f; }, b: type { g; }) { };

f(object {
  method f { };
}, object {
  method g { };
});
