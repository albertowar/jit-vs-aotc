compile-cloop:
	javac ./com/albertowar/cloop/Main.java ./com/albertowar/cloop/Calculator.java ./com/albertowar/statistics/Statistics.java

compile-functional:
	javac ./com/albertowar/functional/Main.java ./com/albertowar/functional/Calculator.java ./com/albertowar/statistics/Statistics.java

compile-iterator:
	javac ./com/albertowar/iterator/Main.java ./com/albertowar/iterator/Calculator.java ./com/albertowar/statistics/Statistics.java

bytecode-cloop:
	javap -c ./com/albertowar/cloop/Calculator.class

bytecode-functional:
	javap -c ./com/albertowar/functional/Calculator.class

bytecode-iterator:
	javap -c ./com/albertowar/iterator/Calculator.class

run-cloop: compile-cloop
	java -cp . com.albertowar.cloop.Main ${ITERATIONS}

run-functional: compile-functional
	java -cp . com.albertowar.functional.Main ${ITERATIONS}

run-iterator: compile-iterator
	java -cp . com.albertowar.iterator.Main ${ITERATIONS}

run-cloop-diag:
	java -XX:+UnlockDiagnosticVMOptions -XX:+TraceClassLoading -XX:+LogCompilation -XX:+PrintAssembly -cp . com.albertowar.cloop.Main ${ITERATIONS}

run-functional-diag:
	java -XX:+UnlockDiagnosticVMOptions -XX:+TraceClassLoading -XX:+LogCompilation -XX:+PrintAssembly -cp . com.albertowar.functional.Main ${ITERATIONS}

run-iterator-diag:
	java -XX:+UnlockDiagnosticVMOptions -XX:+TraceClassLoading -XX:+LogCompilation -XX:+PrintAssembly -cp . com.albertowar.iterator.Main ${ITERATIONS}

present:
	cd reveal.js; npm start

.PHONY: compile-cloop compile-functional compile-iterator bytecode-cloop bytecode-functional bytecode-iterator run-cloop run-functional run-cloop-diag run-functional-diag run-iterator-diag