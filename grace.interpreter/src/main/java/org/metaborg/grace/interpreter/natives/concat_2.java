package org.metaborg.grace.interpreter.natives;

import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.NodeChildren;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChildren({ @NodeChild(value = "s", type = TermBuild.class), @NodeChild(value = "s2", type = TermBuild.class) })
public abstract class concat_2 extends TermBuild {

	public concat_2(SourceSection source) {
		super(source);
	}

	@Specialization
	public Object concatLists(Object s, Object s2) {
		String r = s.toString() + s2.toString();
		return r;
	}

	public static TermBuild create(SourceSection source, TermBuild s, TermBuild s2) {
		return concat_2NodeGen.create(source, s, s2);
	}
}