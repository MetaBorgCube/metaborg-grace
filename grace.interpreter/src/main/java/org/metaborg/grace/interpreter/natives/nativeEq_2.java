package org.metaborg.grace.interpreter.natives;

import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;
import org.metaborg.grace.interpreter.generated.terms.NumV_1_Term;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.NodeChildren;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChildren({ @NodeChild(value = "left", type = TermBuild.class),
				@NodeChild(value = "right", type = TermBuild.class) })
public abstract class nativeEq_2 extends TermBuild {

      public nativeEq_2(SourceSection source) {
              super(source);
      }

      @Specialization
      public boolean doOp(Object a, Object b) {
    	  if (a instanceof NumV_1_Term && b instanceof NumV_1_Term) {
    		  return ((NumV_1_Term) a).get_1() == ((NumV_1_Term) b).get_1();
    	  } else {
    		  throw new RuntimeException("native_eq only works on integer numbers");
    	  }
      }

      public static TermBuild create(SourceSection source, TermBuild left, TermBuild right) {
              return nativeEq_2NodeGen.create(source, left, right);
      }
}