package org.metaborg.grace.interpreter.natives;

import org.metaborg.grace.interpreter.generated.graceLanguage;
import org.metaborg.grace.interpreter.generated.terms.IVTerm;
import org.metaborg.meta.lang.dynsem.interpreter.DynSemContext;
import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChild(value = "stringbuild", type = TermBuild.class)
public abstract class print_1 extends TermBuild {

	public print_1(SourceSection source) {
		super(source);
	}

	@Specialization
	public IVTerm doInt(IVTerm t) {
		if (((graceLanguage) DynSemContext.LANGUAGE).isDEBUG()) {
			System.err.println(t);
		}
		return t;
	}

	public static TermBuild create(SourceSection source, TermBuild stringbuild) {
		return print_1NodeGen.create(source, stringbuild);
	}
}