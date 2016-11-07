package org.metaborg.grace.interpreter.natives;

import org.metaborg.grace.interpreter.generated.terms.BoolV_1_Term;
import org.metaborg.grace.interpreter.generated.terms.NumV_1_Term;
import org.metaborg.grace.interpreter.generated.terms.StringV_1_Term;
import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChild(value = "print", type = TermBuild.class)
public abstract class nativePrint_1 extends TermBuild {

      public nativePrint_1(SourceSection source) {
          super(source);
      }

      @Specialization
      public Object doInt(Object s) {
    	  if (s.getClass() == StringV_1_Term.class) {
    		  System.out.println( ((StringV_1_Term) s).get_1() );
    	  }
    	  else if (s.getClass() == NumV_1_Term.class)
    	      System.out.println(((NumV_1_Term) s).get_1());
    	  else if (s.getClass() == BoolV_1_Term.class)
    		  System.out.println(((BoolV_1_Term) s).get_1());
    	  else
    		  System.out.println(s.toString() + " " + s.getClass() + " (unknown class)");
          return s;
      }

      public static TermBuild create(SourceSection source, TermBuild print) {
          return nativePrint_1NodeGen.create(source, print);
      }
}