package org.metaborg.grace.interpreter.natives;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.metaborg.grace.interpreter.generated.TypesGen;
import org.metaborg.grace.interpreter.generated.graceEntryPoint;
import org.metaborg.grace.interpreter.generated.graceLanguage;
import org.metaborg.grace.interpreter.generated.terms.IProgramTerm;
import org.metaborg.grace.interpreter.generated.terms.IVTerm;
import org.metaborg.grace.interpreter.generated.terms.build.Program_2_TermBuild;
import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;
import org.metaborg.meta.lang.dynsem.interpreter.terms.ITerm;
import org.spoofax.interpreter.terms.IStrategoAppl;
import org.spoofax.interpreter.terms.IStrategoTerm;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.source.Source;
import com.oracle.truffle.api.source.SourceSection;

public class interpolate_string_1 extends TermBuild {

	@Child
	protected TermBuild stringNode;
	
	public interpolate_string_1(SourceSection source, TermBuild s) {
		super(source);
		this.stringNode = s;
	}

	@Override
	public String executeGeneric(VirtualFrame frame) {
		final String s = TypesGen.asString(stringNode.executeGeneric(frame));
		if (!s.contains("{") && !s.contains("}")) {
			return s;
		} else {
			return doString(s, frame);
		}
	}

	private String doString(String s, VirtualFrame f) {
		Matcher m = Pattern.compile("\\{([^}]+)\\}").matcher(s);
		StringBuilder sb = new StringBuilder();
		int count = 0;
		String last = "";
		int previousEnd = 0;
		while(m.find()) {
	    	if (count == 0) { // add the first part of the string
	    		sb.append(s.substring(0, m.start(1)-1));
	    	} else { // add the part between matches
	    		sb.append(s.substring(previousEnd+1, m.start(1)-1));
	    	}
	    	previousEnd = m.end(1);
	    	sb.append(evaluate(m.group(1), f));
	    	count += 1;
	    	last = s.substring(m.end(1)+1, s.length());
	    }
	    sb.append(last);
		return sb.toString();
	}
	
	private String evaluate(String s, VirtualFrame f) {
		System.out.println("executing code fragment: " + s);
		IStrategoTerm term;
		term = graceEntryPoint.createTransformer().transform(getContext().getParser().parse(
				Source.newBuilder(s).name("string interpolation code execution").mimeType(graceEntryPoint.MIME_TYPE).build()));
//		IProgramTerm programTerm = (IProgramTerm) getContext().getTermRegistry().parseProgramTerm(term);
        TermBuild tb = Program_2_TermBuild.create((IStrategoAppl) term, f.getFrameDescriptor());
		
        //TODO how to execute programterm in current frame
		ITerm it = getContext().getTermRegistry().parseProgramTerm(term);
		
//		TypesGen.expectIProgramTerm(tb.executeGeneric(f));
		IVTerm ivterm = TypesGen.asIVTerm(tb.executeGeneric(f));
		return ivterm.toString();
		
	}
	
	public static TermBuild create(SourceSection source, TermBuild s) {
		return new interpolate_string_1(source, s);
	}

}