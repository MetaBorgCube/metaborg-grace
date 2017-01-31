def o = object {

    method f {
      print("A");
      {
        {
          { return 55; }.apply;
        }.apply;
      }.apply;
      print("B");
    };
};

print(o.f);