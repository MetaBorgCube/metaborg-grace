package grace.strategies;

import org.metaborg.meta.lang.dynsem.interpreter.terms.ITermTransformer;
import org.spoofax.interpreter.terms.IStrategoTerm;
    
public final class DesugarTransform implements ITermTransformer {

    @Override
    public IStrategoTerm transform(IStrategoTerm term) {
    	System.out.println("Invoking desugar-complete strategy on term: " + term);
    	IStrategoTerm desugaredTerm = grace.trans.desugar_complete_0_0.instance.invoke(grace.trans.Main.init(), term);
//    	IStrategoTerm desugaredTerm = grace.trans.desugar_test_0_0.instance.invoke(grace.trans.Main.init(), term);
    	System.out.println("Resulted term: " + desugaredTerm);
        return desugaredTerm; 
    }
}