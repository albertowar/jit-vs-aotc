package me.albertowar.lambda;

import java.util.stream.IntStream;

public class Sum {
    public static int sum(int n) {
        return IntStream.range(0, n+1).sum();
    }

    public static void main(String[] args) {
        sum(10);
    }
}