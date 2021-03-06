package org.metaborg.grace.interpreter.natives;

import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.NodeChildren;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChildren({ @NodeChild(value = "s", type = TermBuild.class), @NodeChild(value = "suffix", type = TermBuild.class) })
public abstract class str_remove_suffix_2 extends TermBuild {

	public str_remove_suffix_2(SourceSection source) {
		super(source);
	}

	// FIXME: improve performance by caching
	@Specialization
	public String doOp(String s, String suffix) {
		if (s.endsWith(suffix)) {
			return s.substring(0, s.length() - suffix.length());
		}
		return s;
	}

	public static TermBuild create(SourceSection source, TermBuild left, TermBuild right) {
		return str_remove_suffix_2NodeGen.create(source, left, right);
	}
}