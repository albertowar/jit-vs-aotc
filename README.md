# jit-vs-aotc

## Slides
To present the slides (requires node.js):

```
cd reveall.js
npm install
cd ..
make present
```

## To run locally
In order to run any of the solutions locally:

```
make compile-cloop
ITERATIONS=1 make run-cloop
```

## Notes
For the AOTC execution, it is required to run this in advance:

```
aotc-compile-module
```

This will precompile the java.base module (300 MB) which can be reused across all aotc options.