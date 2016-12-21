package org.metaborg.grace.interpreter.natives;

import java.util.Iterator;

import org.metaborg.grace.interpreter.generated.terms.IClosureTerm;
import org.metaborg.grace.interpreter.generated.terms.List_IClosureTerm;
import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.NodeChildren;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChildren({ @NodeChild(value = "left", type = TermBuild.class),
		@NodeChild(value = "right", type = TermBuild.class) })
public abstract class concatClosures_2 extends TermBuild {

	public concatClosures_2(SourceSection source) {
		super(source);
	}

	@Specialization
	public List_IClosureTerm doOp(List_IClosureTerm a, List_IClosureTerm b) {
		
		// FIXME inefficient
		IClosureTerm[] aTerms = new IClosureTerm[a.size()];
		Iterator<IClosureTerm> aIter = a.iterator();
		int idx = 0;
		while (aIter.hasNext()) {
			aTerms[idx] = aIter.next();
			idx++;
		}
		idx--;
		for(; idx >= 0; idx--){
			b = b.add(aTerms[idx]);
		}
		
		
		return b;
	}

	public static TermBuild create(SourceSection source, TermBuild left, TermBuild right) {
		return concatClosures_2NodeGen.create(source, left, right);
	}
}