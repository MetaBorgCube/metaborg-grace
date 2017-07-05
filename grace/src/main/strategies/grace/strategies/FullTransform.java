package grace.strategies;

import org.metaborg.meta.lang.dynsem.interpreter.terms.ITermTransformer;
import org.spoofax.interpreter.terms.IStrategoTerm;
import org.spoofax.jsglr.client.imploder.ImploderOriginTermFactory;
import org.spoofax.terms.TermFactory;
import org.strategoxt.lang.Context;

public final class FullTransform implements ITermTransformer {

	@Override
	public IStrategoTerm transform(IStrategoTerm term) {
		return grace.trans.full_transform_0_0.instance
				.invoke(grace.trans.Main.init(new Context(new ImploderOriginTermFactory(new TermFactory()))), term);
	}
}