package org.metaborg.grace.interpreter.natives;

import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChild(value = "tb", type = TermBuild.class)
public abstract class notB_1 extends TermBuild {

	public notB_1(SourceSection source) {
		super(source);
	}

	@Specialization
	public boolean doNegate(boolean b) {
		return !b;
	}
	
	public static TermBuild create(SourceSection source, TermBuild tb) {
		return notB_1NodeGen.create(source, tb);
	}
}