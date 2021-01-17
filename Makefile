compile-loop:
	javac ./me/albertowar/loop/Sum.java

compile-lambda:
	javac ./me/albertowar/lambda/Sum.java

bytecode-loop:
	javap -c ./me/albertowar/loop/Sum.class

bytecode-lambda:
	javap -c ./me/albertowar/lambda/Sum.class

run-loop:
	java -XX:+UnlockDiagnosticVMOptions -XX:+TraceClassLoading -XX:+LogCompilation -XX:+PrintAssembly -cp . com.albertowar.loop.Sum

run-lambda:
	java -XX:+UnlockDiagnosticVMOptions -XX:+TraceClassLoading -XX:+LogCompilation -XX:+PrintAssembly -cp . com.albertowar.lambda.Sum

.PHONY: compile-loop compile-lambda bytecode-loop bytecode-lambda run-loop run-lambda