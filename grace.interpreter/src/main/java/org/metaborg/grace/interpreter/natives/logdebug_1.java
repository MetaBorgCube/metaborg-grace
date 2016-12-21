package org.metaborg.grace.interpreter.natives;

import org.metaborg.meta.lang.dynsem.interpreter.DynSemContext;
import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChild(value = "print", type = TermBuild.class)
public abstract class logdebug_1 extends TermBuild {

	public logdebug_1(SourceSection source) {
		super(source);
	}

	@Specialization
	public String doInt(String s) {
		getContext();
		if (DynSemContext.LANGUAGE.isDEBUG()) {
			getContext().getOutput().println(s);
		}
		return s;
	}

	public static TermBuild create(SourceSection source, TermBuild print) {
		return logdebug_1NodeGen.create(source, print);
	}
}