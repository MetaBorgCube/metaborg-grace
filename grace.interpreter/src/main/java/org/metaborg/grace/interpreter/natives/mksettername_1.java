package org.metaborg.grace.interpreter.natives;

import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChild(value = "stringbuild", type = TermBuild.class)
public abstract class mksettername_1 extends TermBuild {

	public mksettername_1(SourceSection source) {
		super(source);
	}

	// FIXME: add caching
	@Specialization
	@TruffleBoundary
	public String doInt(String x) {
		return x + ":=(_)";
	}

	public static TermBuild create(SourceSection source, TermBuild stringbuild) {
		return mksettername_1NodeGen.create(source, stringbuild);
	}
}