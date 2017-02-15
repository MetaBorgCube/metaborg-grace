package org.metaborg.grace.interpreter.natives;

import java.io.File;

import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

public abstract class native_path_separator_0 extends TermBuild {

	public native_path_separator_0(SourceSection source) {
		super(source);
	}

	@Specialization
	public String give() {
		return File.separator;
	}

	public static TermBuild create(SourceSection source) {
		return native_path_separator_0NodeGen.create(source);
	}
}