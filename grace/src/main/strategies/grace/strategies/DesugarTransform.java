package grace.strategies;

import org.metaborg.meta.lang.dynsem.interpreter.terms.ITermTransformer;
import org.spoofax.interpreter.terms.IStrategoTerm;
    
public final class DesugarTransform implements ITermTransformer {

    @Override
    public IStrategoTerm transform(IStrategoTerm term) {
    	return grace.trans.desugar_complete_0_0.instance.invoke(grace.trans.Main.init(), term); 
    }
}