package main

import (
	"testing"
)

func benchmark(iterations int64, b *testing.B) {
	for n := int64(0); n < iterations; n++ {
		sum()
	}
}

func Benchmark1(b *testing.B) {
	benchmark(int64(1), b)
}

func Benchmark10(b *testing.B) {
	benchmark(int64(10), b)
}

func Benchmark100(b *testing.B) {
	benchmark(int64(100), b)
}

func Benchmark1000(b *testing.B) {
	benchmark(int64(1000), b)
}

func Benchmark10000(b *testing.B) {
	benchmark(int64(10000), b)
}

func Benchmark100000(b *testing.B) {
	benchmark(int64(100000), b)
}

func Benchmark1000000(b *testing.B) {
	benchmark(int64(1000000), b)
}

func Benchmark10000000(b *testing.B) {
	benchmark(int64(10000000), b)
}

func Benchmark100000000(b *testing.B) {
	benchmark(int64(100000000), b)
}

func Benchmark1000000000(b *testing.B) {
	benchmark(int64(1000000000), b)
}