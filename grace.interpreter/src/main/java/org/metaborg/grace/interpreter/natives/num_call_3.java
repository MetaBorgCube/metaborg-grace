package org.metaborg.grace.interpreter.natives;

import org.metaborg.grace.interpreter.generated.TypesGen;
import org.metaborg.grace.interpreter.generated.terms.BoolV_1_Term;
import org.metaborg.grace.interpreter.generated.terms.IVTerm;
import org.metaborg.grace.interpreter.generated.terms.NumV_1_Term;
import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.source.SourceSection;

public class num_call_3 extends TermBuild {

	@Child
	protected TermBuild leftNode;
	@Child
	protected TermBuild opNode;
	@Child
	protected TermBuild rightNode;

	public num_call_3(SourceSection source, TermBuild l, TermBuild op, TermBuild r) {
		super(source);
		this.leftNode = l;
		this.opNode = op;
		this.rightNode = r;
	}

	@Override
	public IVTerm executeGeneric(VirtualFrame frame) {
		final NumV_1_Term left = TypesGen.asNumV_1_Term(leftNode.executeGeneric(frame));
		final NumV_1_Term right = TypesGen.asNumV_1_Term(rightNode.executeGeneric(frame));
		final String op = TypesGen.asString(opNode.executeGeneric(frame));
		switch (op) {
		case "+(_)":
			return doPlus(left, right);
		case "-(_)":
			return doMinus(left, right);
		case "*(_)":
			return doTimes(left, right);
		case "%(_)":
			return doMod(left, right);
		case "^(_)":
			return doPow(left, right);
		case "==(_)":
			return doEq(left, right);
		case "!=(_)":
			return doNeq(left, right);
		case ">(_)":
			return doGreater(left, right);
		case "<(_)":
			return doLess(left, right);
		case ">=(_)":
			return doGreaterEq(left, right);
		case "<=(_)":
			return doLessEq(left, right);
		default:
			throw new IllegalArgumentException("operator: '" + op + "' not recognised as operator on number.");
		}
	}

	private IVTerm doPlus(NumV_1_Term left, NumV_1_Term right) {
		return new NumV_1_Term(left.get_1() + right.get_1());
	}

	private IVTerm doMinus(NumV_1_Term left, NumV_1_Term right) {
		return new NumV_1_Term(left.get_1() - right.get_1());
	}

	private IVTerm doTimes(NumV_1_Term left, NumV_1_Term right) {
		return new NumV_1_Term(left.get_1() * right.get_1());
	}
	
	private IVTerm doMod(NumV_1_Term left, NumV_1_Term right) {
		return new NumV_1_Term(left.get_1() % right.get_1());
	}

	private IVTerm doPow(NumV_1_Term left, NumV_1_Term right) {
		return new NumV_1_Term((int) Math.pow(left.get_1(), right.get_1()));
	}

	private IVTerm doEq(NumV_1_Term left, NumV_1_Term right) {
		return new BoolV_1_Term(left.get_1() == right.get_1());
	}

	private IVTerm doNeq(NumV_1_Term left, NumV_1_Term right) {
		return new BoolV_1_Term(left.get_1() != right.get_1());
	}

	private IVTerm doGreater(NumV_1_Term left, NumV_1_Term right) {
		return new BoolV_1_Term(left.get_1() > right.get_1());
	}

	private IVTerm doLess(NumV_1_Term left, NumV_1_Term right) {
		return new BoolV_1_Term(left.get_1() < right.get_1());
	}

	private IVTerm doGreaterEq(NumV_1_Term left, NumV_1_Term right) {
		return new BoolV_1_Term(left.get_1() >= right.get_1());
	}

	private IVTerm doLessEq(NumV_1_Term left, NumV_1_Term right) {
		return new BoolV_1_Term(left.get_1() <= right.get_1());
	}
	
	public static TermBuild create(SourceSection source, TermBuild left, TermBuild op, TermBuild right) {
		return new num_call_3(source, left, op, right);
	}

}