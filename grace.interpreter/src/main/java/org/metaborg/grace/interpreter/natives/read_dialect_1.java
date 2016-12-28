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

@NodeChild(value = "tb", type = TermBuild.class)
public abstract class read_dialect_1 extends TermBuild {

	public read_dialect_1(SourceSection source) {
		super(source);
	}

	@Specialization
	@TruffleBoundary
	public ITerm readDialect(String s) {
		IStrategoTerm term;
		try {
			File fileLocation = new File(".");
			System.out.println(fileLocation.getCanonicalPath());
			if (fileLocation.isDirectory()) {
				for (File f : fileLocation.listFiles()) {
					System.out.println(f.getCanonicalPath());
				}
			}

			term = graceEntryPoint.createTransformer().transform(getContext().getParser().parse(
				Source.newBuilder(new File(s)).name("Dialect import").mimeType(graceEntryPoint.MIME_TYPE).build()));
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
		ITerm programTerm = getContext().getTermRegistry().parseProgramTerm(term);
		return programTerm;
	}
	
	public static TermBuild create(SourceSection source, TermBuild tb) {
		return read_dialect_1NodeGen.create(source, tb);
	}
}