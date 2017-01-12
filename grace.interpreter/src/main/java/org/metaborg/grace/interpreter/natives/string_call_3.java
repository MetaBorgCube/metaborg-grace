package org.metaborg.grace.interpreter.natives;

import org.metaborg.grace.interpreter.generated.TypesGen;
import org.metaborg.grace.interpreter.generated.terms.BoolV_1_Term;
import org.metaborg.grace.interpreter.generated.terms.IVTerm;
import org.metaborg.grace.interpreter.generated.terms.StringV_1_Term;
import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.source.SourceSection;

public class string_call_3 extends TermBuild {

    @Child
    protected TermBuild leftNode;
    @Child
    protected TermBuild opNode;
    @Child
    protected TermBuild rightNode;

    public string_call_3(SourceSection source, TermBuild l, TermBuild op, TermBuild r) {
        super(source);
        this.leftNode = l;
        this.opNode = op;
        this.rightNode = r;
    }

    @Override
    public IVTerm executeGeneric(VirtualFrame frame) {
        final StringV_1_Term left = TypesGen.asStringV_1_Term(leftNode.executeGeneric(frame));
        final String op = TypesGen.asString(opNode.executeGeneric(frame));
        final StringV_1_Term right = TypesGen.asStringV_1_Term(rightNode.executeGeneric(frame));
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
            } catch (NumberFormatException fme2) { }
        }
        // if both cannot be parsed, compare lexicograhically
        boolean res;
        int cmpValue = left.get_1().compareTo(right.get_1());
        if(cmpValue < 0) {
            res = op.equals("<(_)") || op.equals("<=(_)");
        } else if (cmpValue == 0) {
        	res = op.equals("<=(_)") || op.equals(">=(_)");
        } else {
            res = op.equals(">(_)") || op.equals(">=(_)");
        }
        return new BoolV_1_Term(res);
    }
    

    public static TermBuild create(SourceSection source, TermBuild left, TermBuild op, TermBuild right) {
        return new string_call_3(source, left, op, right);
    }

}