package org.metaborg.grace.interpreter.natives;

import org.metaborg.grace.interpreter.generated.terms.NumV_1_Term;
import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChild(value = "stringbuild", type = TermBuild.class)
public abstract class native_numv_literal_1 extends TermBuild {

	public native_numv_literal_1(SourceSection source) {
		super(source);
	}

	// FIXME: add caching
	@Specialization
	@TruffleBoundary
	public NumV_1_Term doInt(String s) {
		return new NumV_1_Term(Integer.parseInt(s));
	}

	public static TermBuild create(SourceSection source, TermBuild stringbuild) {
		return native_numv_literal_1NodeGen.create(source, stringbuild);
	}
}