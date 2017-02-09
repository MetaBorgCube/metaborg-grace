package org.metaborg.grace.interpreter.natives;

import java.io.File;
import java.io.IOException;

import org.metaborg.grace.interpreter.generated.graceEntryPoint;
import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;
import org.metaborg.meta.lang.dynsem.interpreter.terms.ITerm;
import org.spoofax.interpreter.terms.IStrategoTerm;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.Source;
import com.oracle.truffle.api.source.SourceSection;

@NodeChild(value = "fileTerm", type = TermBuild.class)
public abstract class native_parse_dialect_1 extends TermBuild {

	public native_parse_dialect_1(SourceSection source) {
		super(source);
	}

	@Specialization
	@TruffleBoundary
	public ITerm parseFile(String s) {
		final File dialectFile = new File(s + ".grace");

		if (!dialectFile.exists()) {
			throw new RuntimeException("Dialect file: '" + s + "' does not exist.");
		}

		try {
			final IStrategoTerm term = graceEntryPoint.createTransformer()
					.transform(getContext().getParser().parse(Source.newBuilder(dialectFile)
							.name("Dialect import: '" + s + "'").mimeType(graceEntryPoint.MIME_TYPE).build()));
			return getContext().getTermRegistry().parseProgramTerm(term);
		} catch (IOException e) {
			throw new RuntimeException("Cannot read dialect file: '" + s + "'.");
		}
	}

	public static TermBuild create(SourceSection source, TermBuild tb) {
		return native_parse_dialect_1NodeGen.create(source, tb);
	}
}