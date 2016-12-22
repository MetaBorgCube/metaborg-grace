package org.metaborg.grace.interpreter.natives;

import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.NodeChildren;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChildren({ @NodeChild(value = "s", type = TermBuild.class),
		@NodeChild(value = "prefix", type = TermBuild.class) })
public abstract class str_starts_with_2 extends TermBuild {

	public str_starts_with_2(SourceSection source) {
		super(source);
	}

	@Specialization
	public boolean doOp(String s, String prefix) {
		return s.startsWith(prefix);
	}

	public static TermBuild create(SourceSection source, TermBuild left, TermBuild right) {
		return str_starts_with_2NodeGen.create(source, left, right);
	}
}