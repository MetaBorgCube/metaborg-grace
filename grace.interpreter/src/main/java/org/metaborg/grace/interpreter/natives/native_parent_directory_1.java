package org.metaborg.grace.interpreter.natives;

import java.io.File;

import org.metaborg.meta.lang.dynsem.interpreter.nodes.building.TermBuild;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.dsl.NodeChild;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.source.SourceSection;

@NodeChild(value = "s", type = TermBuild.class)
public abstract class native_parent_directory_1 extends TermBuild {

	public native_parent_directory_1(SourceSection source) {
		super(source);
	}

	@Specialization
	@TruffleBoundary
	public String getParent(String s) {
		File fp = (new File(s)).getParentFile();
		if (fp == null) throw new RuntimeException("Parent of file '" + s + "' does not exist.");
		return fp.getAbsolutePath();
	}

	public static TermBuild create(SourceSection source, TermBuild tb) {
		return native_parent_directory_1NodeGen.create(source, tb);
	}
}