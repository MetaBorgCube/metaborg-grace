package org.metaborg.grace.interpreter.natives;

import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.NodeChildren;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChildren(
  { @NodeChild(value = "s", type = TermBuild.class),
	@NodeChild(value = "s2", type = TermBuild.class),
	@NodeChild(value = "s3", type = TermBuild.class)})
public abstract class debug_3 extends TermBuild {

      public debug_3(SourceSection source) {
          super(source);
      }

      @Specialization
      public Object doInt(Object s, Object s2, Object s3) {
    	  String r = s.toString() + s2.toString() + s3.toString();
    	  System.err.println(r);
    	  return r;
      }

      public static TermBuild create(SourceSection source, TermBuild s, TermBuild s2, TermBuild s3) {
          return debug_3NodeGen.create(source, s, s2, s3);
      }
}