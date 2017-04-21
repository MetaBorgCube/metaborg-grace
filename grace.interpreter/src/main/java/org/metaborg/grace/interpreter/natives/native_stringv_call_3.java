package org.metaborg.grace.interpreter.natives;

import org.metaborg.grace.interpreter.generated.TypesGen;
import org.metaborg.grace.interpreter.generated.terms.BoolV_1_Term;
import org.metaborg.grace.interpreter.generated.terms.IVTerm;
import org.metaborg.grace.interpreter.generated.terms.List_IVTerm;
import org.metaborg.grace.interpreter.generated.terms.NumV_1_Term;
import org.metaborg.grace.interpreter.generated.terms.StringV_1_Term;
import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.source.SourceSection;

public class native_stringv_call_3 extends TermBuild {

	@Child
	protected TermBuild opNode;
	@Child
	protected TermBuild leftNode;
	@Child
	protected TermBuild rightNodes;

	public native_stringv_call_3(SourceSection source, TermBuild op, TermBuild l, TermBuild r) {
		super(source);
		this.opNode = op;
		this.leftNode = l;
		this.rightNodes = r;
	}

	@Override
	public IVTerm executeGeneric(VirtualFrame frame) {
		final String op = TypesGen.asString(opNode.executeGeneric(frame));
		final StringV_1_Term left = TypesGen.asStringV_1_Term(leftNode.executeGeneric(frame));
		final List_IVTerm params = TypesGen.asList_IVTerm(rightNodes.executeGeneric(frame));
		switch (params.size()) {
		case 0:
			return executeGenericNullary(op, left);
		case 1:
			return executeGenericUnary(op, left, TypesGen.asStringV_1_Term(params.head()));
		default:
			throw new IllegalArgumentException("operator: '" + op + "' not recognised as operator on number.");
		}
	}

	private IVTerm executeGenericUnary(String op, StringV_1_Term left, StringV_1_Term right) {
		switch (op) {
		case "==(_)":
			return doEq(left, right);
		case "!=(_)":
			return doNeq(left, right);
		case "++(_)":
			return doConcat(left, right);
		case "at(_)":
			return doAt(left, right);
		case "<(_)":
		case ">(_)":
		case "<=(_)":
		case ">=(_)":
			return doCmp(left, right, op);
		default:
			throw new IllegalArgumentException("operator: '" + op + "' not recognised as operator on string.");
		}
	}

	private IVTerm executeGenericNullary(String op, StringV_1_Term left) {
		switch (op) {
		case "size":
			return doSize(left);
		case "asString":
			return left;
		default:
			throw new IllegalArgumentException("operator: '" + op + "' not recognised as operator on string.");
		}
	}

	private IVTerm doSize(StringV_1_Term left) {
		return new NumV_1_Term(left.get_1().length());
	}

	private IVTerm doEq(final StringV_1_Term left, final StringV_1_Term right) {
		return new BoolV_1_Term(left.get_1().equals(right.get_1()));
	}

	private IVTerm doNeq(final StringV_1_Term left, final StringV_1_Term right) {
		return new BoolV_1_Term(!left.get_1().equals(right.get_1()));
	}

	private IVTerm doConcat(final StringV_1_Term left, final StringV_1_Term right) {
		return new StringV_1_Term(left.get_1() + right.get_1());
	}

	private IVTerm doAt(final StringV_1_Term left, final StringV_1_Term right) {
		return new StringV_1_Term(String.valueOf(left.get_1().charAt(Integer.parseInt(right.get_1()))));
	}

	private IVTerm doCmp(final StringV_1_Term left, final StringV_1_Term right, final String op) {
		try {
			Integer.parseInt(left.get_1());
			try {
				Integer.parseInt(right.get_1());
			} catch (NumberFormatException fme) {
				return new BoolV_1_Term(false);
			}
		} catch (NumberFormatException fme) {
			try {
				Integer.parseInt(right.get_1());
				return new BoolV_1_Term(false);
			} catch (NumberFormatException fme2) {
			}
		}
		// if both cannot be parsed, compare lexicographically
		boolean res;
		int cmpValue = left.get_1().compareTo(right.get_1());
		if (cmpValue < 0) {
			res = op.equals("<(_)") || op.equals("<=(_)");
		} else if (cmpValue == 0) {
			res = op.equals("<=(_)") || op.equals(">=(_)");
		} else {
			res = op.equals(">(_)") || op.equals(">=(_)");
		}
		return new BoolV_1_Term(res);
	}

	public static TermBuild create(SourceSection source, TermBuild op, TermBuild left, TermBuild right) {
		return new native_stringv_call_3(source, op, left, right);
	}

}