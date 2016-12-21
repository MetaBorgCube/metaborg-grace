package org.metaborg.grace.interpreter.natives;

import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChild(value = "tb", type = TermBuild.class)
public abstract class str_1 extends TermBuild {

	public str_1(SourceSection source) {
		super(source);
	}

	@Specialization
	@TruffleBoundary
	public String doTerm(Object o) {
		return o.toString();
	}
	
	public static TermBuild create(SourceSection source, TermBuild tb) {
		return str_1NodeGen.create(source, tb);
	}
}