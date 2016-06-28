package org.metaborg.grace.interpreter.natives;

import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChild(value = "stringbuild", type = TermBuild.class)
public abstract class parseNumber_1 extends TermBuild {

      public parseNumber_1(SourceSection source) {
              super(source);
      }

      @Specialization
      public int doInt(String s) {
          return Integer.parseInt(s);
      }

      public static TermBuild create(SourceSection source, TermBuild stringbuild) {
              return parseNumber_1NodeGen.create(source, stringbuild);
      }
}