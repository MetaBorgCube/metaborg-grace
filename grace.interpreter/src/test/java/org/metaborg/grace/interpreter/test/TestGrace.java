package org.metaborg.grace.interpreter.test;

import static org.junit.Assert.assertEquals;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.LinkedList;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.input.NullInputStream;
import org.apache.commons.io.output.ByteArrayOutputStream;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameters;
import org.metaborg.grace.interpreter.generated.graceEntryPoint;

import grace.strategies.FileExtensions;

@RunWith(Parameterized.class)
public class TestGrace {

	/* Put your tests in the following folder and their corresponding .output
     * and optionally their .input files. Base name of the file is the same
     * for the program, input, and output file. Example:
	 *   helloworld.lang
	 *   helloworld.input // optional!
	 *   helloworld.output
	 */
	public static final String TESTSPATH = "src/test/resources/";

	private TestData testData;
	private InputStream inputStream;
	private ByteArrayOutputStream outputStream;
	private ByteArrayOutputStream errorStream;
	
	public TestGrace(TestData td) {
		this.testData = td;
	}

	@Before
	public void setUp() throws IOException {
		if (testData.inputFile != null) {
			InputStream is = new FileInputStream(new File(testData.inputFile));
			inputStream = is;
		} else {
			inputStream = new NullInputStream(0);
		}

		outputStream = new ByteArrayOutputStream();
		errorStream = new ByteArrayOutputStream();
	}

	@After
	public void tearDown() throws IOException {
		inputStream.close();
		outputStream.close();
		errorStream.close();
	}

	@Test
	public void testEagerEval() throws Exception {

		graceEntryPoint.evaluate(testData.programFile, inputStream,
				outputStream, errorStream);

		outputStream.flush();
		errorStream.flush();

		System.out.println("programFile: " + testData.programFile);
		System.out.println("outputFile: " + testData.outputFile);

		FileInputStream fis = new FileInputStream(testData.outputFile);
		String expectedOutput = IOUtils.toString(fis);
		IOUtils.closeQuietly(fis);
		String actualOutput = new String(outputStream.toByteArray());

		if (errorStream.size() > 0) {
			actualOutput = new String(errorStream.toByteArray()) + "\n";
		}
		assertEquals(expectedOutput.trim(), actualOutput.trim());
	}


	@Parameters(name = "{index}: {0}")
	public static Collection<TestData> testTargets() {
		
		File testDir = new File(TESTSPATH);
		LinkedList<File> programs = getAllFiles(testDir, new GraceFileFilter());
		LinkedList<TestData> data = new LinkedList<>();
		
		
		for (File testProgram : programs) {
			System.out.println("path: " + testProgram.getAbsolutePath());
			String baseName = FilenameUtils.getBaseName(testProgram.getName());

			String expectedInput =  testProgram.getParent() +
					IOUtils.DIR_SEPARATOR + baseName + ".input";
			if (!new File(expectedInput).exists()) {
				expectedInput = null;
			}

			String expectedOutput = testProgram.getParent() +
					IOUtils.DIR_SEPARATOR + baseName + ".output";
			System.out.println("expectedOutput: " + expectedOutput);
			if (!new File(expectedOutput).exists()) {
				expectedOutput = null;
			}

			data.add(new TestData(testProgram.getName(), testProgram.getAbsolutePath(),
					expectedInput, expectedOutput));
		}
		for (TestData t : data) {
			System.out.println(t);
		}
		System.out.println("total tests found: " + data.size());
		return data;
	}

	private static class TestData {
		public final String testname;
		public final String programFile;
		public final String inputFile;
		public final String outputFile;

		public TestData(String testname, String programFile, String inputFile,
				String outputFile) {
			this.testname = testname;
			this.programFile = programFile;
			this.inputFile = inputFile;
			this.outputFile = outputFile;
		}

		@Override
		public String toString() {
			return testname;
		}
	}
	
	interface LanguageFileFilter {
		public boolean accept(File file);
	}
	
	static class GraceFileFilter implements LanguageFileFilter {
		public boolean accept(File file) {
			for (String ext : FileExtensions.getFileExtensions()) {
				if (FilenameUtils.getExtension(file.getName()).equalsIgnoreCase(ext))
				  return true;
			}
			return false;
		}
	}
	
	public static LinkedList<File> getAllFiles(File root, LanguageFileFilter filter) {

        File[] list = root.listFiles();

        LinkedList<File> res = new LinkedList<>();
        
        if (list == null) return res;

        for (File f : list) {
            if (f.isDirectory()) {
                res.addAll(getAllFiles(f, filter));
            } else if (filter.accept(f)) {
                res.add(f);
            }
        }
        return res;
    }
}