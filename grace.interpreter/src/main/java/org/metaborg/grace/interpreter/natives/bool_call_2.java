package org.metaborg.grace.interpreter.natives;

import org.metaborg.grace.interpreter.generated.TypesGen;
import org.metaborg.grace.interpreter.generated.terms.BoolV_1_Term;
import org.metaborg.grace.interpreter.generated.terms.IVTerm;
import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.source.SourceSection;

public class bool_call_2 extends TermBuild {

	@Child
	protected TermBuild leftNode;
	@Child
	protected TermBuild opNode;

	public bool_call_2(SourceSection source, TermBuild l, TermBuild op) {
		super(source);
		this.leftNode = l;
		this.opNode = op;
	}

	@Override
	public IVTerm executeGeneric(VirtualFrame frame) {
		final BoolV_1_Term left = TypesGen.asBoolV_1_Term(leftNode.executeGeneric(frame));
		final String op = TypesGen.asString(opNode.executeGeneric(frame));
		switch (op) {
		case "not":
			return doNot(left);
		default:
			throw new IllegalArgumentException("operator: '" + op + "' not recognised as operator on number.");
		}
	}

	private IVTerm doNot(final BoolV_1_Term left) {
		return new BoolV_1_Term(!left.get_1());
	}

	public static TermBuild create(SourceSection source, TermBuild left, TermBuild op) {
		return new bool_call_2(source, left, op);
	}

}