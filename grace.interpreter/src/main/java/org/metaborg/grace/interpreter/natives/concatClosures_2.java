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
		IClosureTerm[] bTerms = new IClosureTerm[b.size()];
		Iterator<IClosureTerm> bIter = b.iterator();
		int idx = 0;
		while (bIter.hasNext()) {
			bTerms[idx] = bIter.next();
			idx++;
		}

		return a.addAll(bTerms);
	}

	public static TermBuild create(SourceSection source, TermBuild left, TermBuild right) {
		return concatClosures_2NodeGen.create(source, left, right);
	}
}