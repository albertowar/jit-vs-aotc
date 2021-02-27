package com.albertowar.iterator;

import com.albertowar.statistics.Statistics;

public class Main {
    private static final int[] input = new int[] { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };

    public static void main(String[] args) {
        Statistics stats = new Statistics();
        Calculator calculator = new Calculator(input);
    
        for (int i = 0; i < Integer.parseInt(args[0]); ++i) {
            long startTime = System.nanoTime();
            calculator.sum();
            long endTime = System.nanoTime();
    
            long latency = endTime - startTime;
            stats.recordValue(latency);
        }
    
        stats.printSummary();
    }
}