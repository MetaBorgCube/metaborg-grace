package grace.strategies;

import org.spoofax.interpreter.core.Tools;
import org.spoofax.interpreter.terms.IStrategoTerm;
import org.spoofax.interpreter.terms.ITermFactory;
import org.strategoxt.lang.Context;
import org.strategoxt.lang.Strategy;

public class substring_0_2 extends Strategy {
    public static substring_0_2 instance = new substring_0_2();

    @Override public IStrategoTerm invoke(Context context, 
    		IStrategoTerm current, IStrategoTerm begin, IStrategoTerm end) {
    	final String str = Tools.asJavaString(current);
        final int begini = Tools.asJavaInt(begin);
        final int endi = Tools.asJavaInt(end);
        
        final ITermFactory factory = context.getFactory();
        final String res;
        try {
        	res = str.substring(begini, endi);
        } catch (IndexOutOfBoundsException e) {
        	return null;
        }
        IStrategoTerm after = factory.makeString(res);
        after = factory.annotateTerm(after, current.getAnnotations());
        return after;
    }
}