package org.metaborg.grace.interpreter.natives;

import org.metaborg.grace.interpreter.generated.terms.StringV_1_Term;
import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChild(value = "print", type = TermBuild.class)
public abstract class nativePrint_1 extends TermBuild {

	public nativePrint_1(SourceSection source) {
		super(source);
	}

	@Specialization
	public StringV_1_Term doString(StringV_1_Term s){
		getContext().getOutput().println(s.get_1());
		return s;
	}
	
	public static TermBuild create(SourceSection source, TermBuild print) {
		return nativePrint_1NodeGen.create(source, print);
	}
}