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
public abstract class parse_file_1 extends TermBuild {

	public parse_file_1(SourceSection source) {
		super(source);
	}

	@Specialization
	@TruffleBoundary
	public ITerm parseFile(String s) {
		IStrategoTerm term;
		File dialectFile = new File(new File(new File(new File(new File("src"), "main"), "resources"), "dialects"), s + ".grace");
		if (!dialectFile.exists()) {
			dialectFile = new File(s + ".grace");
			if (!dialectFile.exists()) {
				throw new RuntimeException("Dialect file: '" + s +  "' does not exist.");
			}
		}
		
		try {
			term = graceEntryPoint.createTransformer().transform(getContext().getParser().parse(
				Source.newBuilder(dialectFile).name("Dialect import: '" + s + "'").mimeType(graceEntryPoint.MIME_TYPE).build()));
		} catch (IOException e) {
			throw new RuntimeException("Cannot read dialect file: '" + s + "'.");
		}
		ITerm programTerm = getContext().getTermRegistry().parseProgramTerm(term);
		return programTerm;
	}
	
	public static TermBuild create(SourceSection source, TermBuild tb) {
		return parse_file_1NodeGen.create(source, tb);
	}
}