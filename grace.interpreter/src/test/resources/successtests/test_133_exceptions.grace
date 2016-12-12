try {
    var x := 1;
    x.nonExistentMethod;
} catch {
    e -> assert (e.exception) shouldBe (NoSuchMethod);
};

try {
    ProgrammingError.raise "OK";
} catch {
    e -> assert (e.exception) shouldBe (ProgrammingError);
} catch {
    e -> failBecause "ProgrammingError {e} caught as Exception";
};