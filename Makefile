aotc-compile-module:
	jaotc -J-XX:+UseCompressedOops -J-XX:+UseG1GC -J-Xmx4g --compile-for-tiered --info --compile-commands java.base-list.txt --output libjava.base-coop.so --module java.base

# C style
compile-cloop:
	javac ./com/albertowar/cloop/Main.java ./com/albertowar/cloop/Calculator.java

aotc-compile-cloop:
	jaotc -J-XX:+UseCompressedOops -J-XX:+UseG1GC -J-Xmx4g --compile-for-tiered --output ./com/albertowar/cloop/cloop.so --search-path ./com/albertowar/cloop --class-name com.albertowar.cloop.Main.class:com.albertowar.cloop.Calculator.class --info

run-cloop:
	java -cp . com.albertowar.cloop.Main ${ITERATIONS}

run-cloop-diag:
	java -XX:+UnlockDiagnosticVMOptions -XX:+TraceClassLoading -XX:+LogCompilation -XX:+PrintAssembly -cp . com.albertowar.cloop.Main ${ITERATIONS}

aotc-run-cloop:
	java -XX:+UnlockExperimentalVMOptions -XX:AOTLibrary=./libjava.base-coop.so,./com/albertowar/cloop/cloop.so com.albertowar.cloop.Main ${ITERATIONS}

bytecode-cloop:
	javap -c ./com/albertowar/cloop/Calculator.class

# functional
compile-functional:
	javac ./com/albertowar/functional/Main.java ./com/albertowar/functional/Calculator.java

aotc-compile-functional:
	jaotc -J-XX:+UseCompressedOops -J-XX:+UseG1GC -J-Xmx4g --compile-for-tiered --output ./com/albertowar/functional/functional.so --search-path ./com/albertowar/functional --class-name com.albertowar.functional.Main.class:com.albertowar.functional.Calculator.class --info

run-functional:
	java -cp . com.albertowar.functional.Main ${ITERATIONS}

run-functional-diag:
	java -XX:+UnlockDiagnosticVMOptions -XX:+TraceClassLoading -XX:+LogCompilation -XX:+PrintAssembly -cp . com.albertowar.functional.Main ${ITERATIONS}

aotc-run-functional:
	java -XX:+UnlockExperimentalVMOptions -XX:AOTLibrary=./libjava.base-coop.so,./com/albertowar/functional/functional.so com.albertowar.functional.Main ${ITERATIONS}

bytecode-functional:
	javap -c ./com/albertowar/functional/Calculator.class

# Iterator
compile-iterator:
	javac ./com/albertowar/iterator/Main.java ./com/albertowar/iterator/Calculator.java

aotc-compile-iterator:
	jaotc --compile-for-tiered --output ./com/albertowar/iterator/iterator.so --search-path ./com/albertowar/iterator --class-name com.albertowar.iterator.Main.class:com.albertowar.iterator.Calculator.class --info

run-iterator:
	java -cp . com.albertowar.iterator.Main ${ITERATIONS}

run-iterator-diag:
	java -XX:+UnlockDiagnosticVMOptions -XX:+TraceClassLoading -XX:+LogCompilation -XX:+PrintAssembly -cp . com.albertowar.iterator.Main ${ITERATIONS}

aotc-run-iterator:
	java -XX:+UnlockExperimentalVMOptions -XX:AOTLibrary=./libjava.base-coop.so,./com/albertowar/iterator/iterator.so com.albertowar.iterator.Main ${ITERATIONS}

bytecode-iterator:
	javap -c ./com/albertowar/iterator/Calculator.class

.PHONY: compile-cloop compile-functional compile-iterator bytecode-cloop bytecode-functional bytecode-iterator run-cloop run-functional run-cloop-diag run-functional-diag run-iterator-diag