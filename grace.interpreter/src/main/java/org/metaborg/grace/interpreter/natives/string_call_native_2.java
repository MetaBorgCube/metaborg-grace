package org.metaborg.grace.interpreter.natives;

import org.metaborg.grace.interpreter.generated.TypesGen;
import org.metaborg.grace.interpreter.generated.terms.IVTerm;
import org.metaborg.grace.interpreter.generated.terms.NumV_1_Term;
import org.metaborg.grace.interpreter.generated.terms.StringV_1_Term;
import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.source.SourceSection;

public class string_call_native_2 extends TermBuild {

	@Child
	protected TermBuild opNode;
	@Child
	protected TermBuild termNode;
	
	public string_call_native_2(SourceSection source, TermBuild op, TermBuild term) {
		super(source);
		this.opNode = op;
		this.termNode = term;
	}

	@Override
	public IVTerm executeGeneric(VirtualFrame frame) {
		final String op = TypesGen.asString(opNode.executeGeneric(frame));
		final StringV_1_Term left = TypesGen.asStringV_1_Term(termNode.executeGeneric(frame));
		switch (op) {
		case "size":
			return doSize(left);
		default:
			throw new IllegalArgumentException("operator: '" + op + "' not recognised as operator on string.");
		}
	}

	private IVTerm doSize(StringV_1_Term left) {
		return new NumV_1_Term(left.get_1().length());
	}
	
	public static TermBuild create(SourceSection source, TermBuild op, TermBuild term) {
		return new string_call_native_2(source, op, term);
	}

}