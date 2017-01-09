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
public abstract class read_import_1 extends TermBuild {

	public read_import_1(SourceSection source) {
		super(source);
	}

	@Specialization
	@TruffleBoundary
	public ITerm readDialect(String s) {
		IStrategoTerm term;
		File importFile = new File(s + ".grace");
		if (!importFile.exists()) {
			throw new RuntimeException("Import file: '" + s +  "' does not exist.");
		}
		
		try {
			term = graceEntryPoint.createTransformer().transform(getContext().getParser().parse(
				Source.newBuilder(importFile).name("File import: '" + s + "'").mimeType(graceEntryPoint.MIME_TYPE).build()));
		} catch (IOException e) {
			throw new RuntimeException("Cannot read import file: '" + s + "'.");
		}
		ITerm programTerm = getContext().getTermRegistry().parseProgramTerm(term);
		return programTerm;
	}
	
	public static TermBuild create(SourceSection source, TermBuild tb) {
		return read_dialect_1NodeGen.create(source, tb);
	}
}