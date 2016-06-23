package org.metaborg.grace.interpreter.natives;

import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.NodeChildren;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChildren({ @NodeChild(value = "condition", type = TermBuild.class),
                @NodeChild(value = "thenV", type = TermBuild.class),
				@NodeChild(value = "elseV", type = TermBuild.class) })
public abstract class nativeIfThenElse_3 extends TermBuild {

      public nativeIfThenElse_3(SourceSection source) {
              super(source);
      }

      @Specialization
      public Object doOp(Boolean con, Object v1, Object v2) {
    	  System.out.println("Executing native operator: ifThenElse with condition: " + con);
    	  System.out.println("Values, then: " + v1.toString() + " with type: " + v1.getClass());
    	  System.out.println("Values, else: " + v2.toString() + " with type: " + v2.getClass());
    	  return con ? v1 : v2;
      }

      public static TermBuild create(SourceSection source, TermBuild condition, TermBuild thenV, TermBuild elseV) {
              return nativeIfThenElse_3NodeGen.create(source, condition, thenV, elseV);
      }
}