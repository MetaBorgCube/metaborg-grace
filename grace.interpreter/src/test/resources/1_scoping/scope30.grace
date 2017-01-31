method mkSup {
  object {
    method f {
    };
  };
};
  
object {

  method f {
  };
  
  object {
    inherit mkSup;
    
    f;
  };
  
};