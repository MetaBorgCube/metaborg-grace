package org.metaborg.grace.interpreter.natives;

import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

public abstract class native_standardgrace_0 extends TermBuild {

	public native_standardgrace_0(SourceSection source) {
		super(source);
	}

	@Specialization
	public String give() {
		return "src/main/resources/dialects/standardGrace";
	}

	public static TermBuild create(SourceSection source) {
		return native_standardgrace_0NodeGen.create(source);
	}
}