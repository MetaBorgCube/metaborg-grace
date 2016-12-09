package org.metaborg.grace.interpreter.natives;

import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.NodeChildren;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChildren({ @NodeChild(value = "s", type = TermBuild.class), @NodeChild(value = "s2", type = TermBuild.class),
		@NodeChild(value = "s3", type = TermBuild.class) })
public abstract class error_3 extends TermBuild {

	public error_3(SourceSection source) {
		super(source);
	}

	@Specialization
	public Object doInt(Object s, Object s2, Object s3) {
		String r = s.toString() + s2.toString() + s3.toString();
		throw new RuntimeException(r);
	}

	public static TermBuild create(SourceSection source, TermBuild s, TermBuild s2, TermBuild s3) {
		return error_3NodeGen.create(source, s, s2, s3);
	}
}