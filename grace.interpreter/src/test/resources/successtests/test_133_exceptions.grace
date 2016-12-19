try {
    var x := 1;
    x.nonExistentMethod;
} catch {
    e -> assert (e.exception) shouldBe (NoSuchMethod);
};

try {
    ProgrammingError.raise "OK";
} catch {
    e: ProgrammingError -> assert (e.exception) shouldBe (ProgrammingError);
} catch {
    e: Exception -> failBecause "ProgrammingError {e} caught as Exception";
};