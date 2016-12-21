package org.metaborg.grace.interpreter.natives;

import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.NodeChildren;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChildren({ @NodeChild(value = "operator", type = TermBuild.class),
		@NodeChild(value = "left", type = TermBuild.class), @NodeChild(value = "right", type = TermBuild.class) })
public abstract class nativeIBinOp_3 extends TermBuild {

	public nativeIBinOp_3(SourceSection source) {
		super(source);
	}

	@Specialization
	public int doOp(String op, int v1, int v2) {
		// System.out.println("Executing native operator: " + op + " with type:
		// " + op.getClass());
		switch (op) {
		case "+(_)":
			return v1 + v2;
		case "-(_)":
			return v1 - v2;
		case "*(_)":
			return v1 * v2;
		case "/(_)":
			return v1 / v2;
		default:
			throw new IllegalArgumentException("operator: '" + op + "' not recognised as a native operator.");
		}
	}

	public static TermBuild create(SourceSection source, TermBuild operator, TermBuild left, TermBuild right) {
		return nativeIBinOp_3NodeGen.create(source, operator, left, right);
	}
}