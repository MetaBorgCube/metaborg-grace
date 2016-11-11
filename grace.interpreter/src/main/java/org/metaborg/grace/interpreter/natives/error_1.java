package org.metaborg.grace.interpreter.natives;

import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;


@NodeChild(value = "print", type = TermBuild.class)
public abstract class error_1 extends TermBuild {

      public error_1(SourceSection source) {
    	  super(source);
      }

      @Specialization
      public Object doInt(Object s) {
    	  System.err.println(s);
    	  throw new RuntimeException(s.toString());
//    	  return s;
      }

      public static TermBuild create(SourceSection source, TermBuild print) {
          return error_1NodeGen.create(source, print);
      }
}