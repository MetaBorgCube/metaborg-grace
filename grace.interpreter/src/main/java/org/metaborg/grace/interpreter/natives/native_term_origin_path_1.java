package org.metaborg.grace.interpreter.natives;

import static org.spoofax.jsglr.client.imploder.ImploderAttachment.getLeftToken;

import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;
import org.metaborg.meta.lang.dynsem.interpreter.terms.ITerm;
import org.spoofax.interpreter.terms.IStrategoTerm;
import org.spoofax.terms.attachments.OriginAttachment;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChild(value = "termTerm", type = TermBuild.class)
public abstract class native_term_origin_path_1 extends TermBuild {

	public native_term_origin_path_1(SourceSection source) {
		super(source);
	}

	@Specialization
	@TruffleBoundary
	public String filePath(ITerm t) {
		if(!t.hasStrategoTerm()) {
			throw new RuntimeException("Term has no Stratego term attached");
		}
		final IStrategoTerm st = t.getStrategoTerm();
		final OriginAttachment origin = st.getAttachment(OriginAttachment.TYPE);
		if(origin == null){
			throw new RuntimeException("Attached Stratego term has no origin attachment");
		}
		
		return getLeftToken(origin.getOrigin()).getTokenizer().getFilename();
	}

	public static TermBuild create(SourceSection source, TermBuild tb) {
		return native_term_origin_path_1NodeGen.create(source, tb);
	}
}