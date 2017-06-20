package org.metaborg.grace.interpreter.natives;

import java.io.File;
import java.io.IOException;

import org.metaborg.meta.lang.dynsem.interpreter.DynSemContext;
import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;
import org.metaborg.meta.lang.dynsem.interpreter.terms.ITerm;
import org.spoofax.interpreter.terms.IStrategoTerm;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.Source;
import com.oracle.truffle.api.source.SourceSection;

@NodeChild(value = "fileTerm", type = TermBuild.class)
public abstract class native_parse_program_1 extends TermBuild {

	public native_parse_program_1(SourceSection source) {
		super(source);
	}

	@Specialization
	@TruffleBoundary
	public ITerm parseFile(String s) {
		final File dialectFile = new File(s + ".grace");

		if (!dialectFile.exists()) {
			throw new RuntimeException("Grace module: '" + s + "' does not exist.");
		}
		final DynSemContext ctx = getContext();
		try {
			final IStrategoTerm term = ctx.getTermTransformer()
					.transform(getContext().getParser().parse(Source.newBuilder(dialectFile)
							.name("Dialect import: '" + s + "'").mimeType(ctx.getMimeTypeObjLanguage()).build()));
			return getContext().getTermRegistry().parseProgramTerm(term);
		} catch (IOException e) {
			throw new RuntimeException("Cannot read dialect file: '" + s + "'.");
		}
	}

	public static TermBuild create(SourceSection source, TermBuild tb) {
		return native_parse_program_1NodeGen.create(source, tb);
	}
}