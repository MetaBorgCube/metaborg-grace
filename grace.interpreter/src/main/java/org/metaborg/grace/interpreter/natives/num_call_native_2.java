package org.metaborg.grace.interpreter.natives;

import org.metaborg.grace.interpreter.generated.TypesGen;
import org.metaborg.grace.interpreter.generated.terms.IVTerm;
import org.metaborg.grace.interpreter.generated.terms.NumV_1_Term;
import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.source.SourceSection;

public class num_call_native_2 extends TermBuild {

	@Child
	protected TermBuild opNode;
	@Child
	protected TermBuild termNode;

	public num_call_native_2(SourceSection source, TermBuild op, TermBuild termNode) {
		super(source);
		this.opNode = op;
		this.termNode = termNode;
	}

	@Override
	public IVTerm executeGeneric(VirtualFrame frame) {
		final String op = TypesGen.asString(opNode.executeGeneric(frame));
		final NumV_1_Term left = TypesGen.asNumV_1_Term(termNode.executeGeneric(frame));
		switch (op) {
		case "prefix-":
			return doPrefixMinus(left);
		default:
			throw new IllegalArgumentException("operator: '" + op + "' not recognised as operator on number.");
		}
	}

	private IVTerm doPrefixMinus(NumV_1_Term left) {
		return new NumV_1_Term(-left.get_1());
	}

	public static TermBuild create(SourceSection source, TermBuild op, TermBuild term) {
		return new num_call_native_2(source, op, term);
	}

}