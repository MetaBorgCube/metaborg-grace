package org.metaborg.grace.interpreter.natives;

import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChild(value = "integer", type = TermBuild.class)
public abstract class bool2string_1 extends TermBuild {

	public bool2string_1(SourceSection source) {
		super(source);
	}

	@Specialization
	public String doTerm(boolean b) {
		return b + "";
	}

	public static TermBuild create(SourceSection source, TermBuild integer) {
		return bool2string_1NodeGen.create(source, integer);
	}
}