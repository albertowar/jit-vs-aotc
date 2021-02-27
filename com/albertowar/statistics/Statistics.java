package com.albertowar.statistics;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Statistics {
    private final List<Long> latencies;

    public Statistics() {
        this.latencies = new ArrayList<>();
    }

    public void recordValue(long n) {
        this.latencies.add(n);
    }

    public void printSummary() {
        System.out.printf("Average: %s\n", average(this.latencies));
        System.out.printf("Median: %s\n", percentile(this.latencies, 50));
        System.out.printf("P99: %s\n", percentile(this.latencies, 99));
    }

    private static BigInteger average(List<Long> numbers) {
        BigInteger sum = BigInteger.valueOf(0);
        
        for (Long n : numbers) {
            sum = sum.add(BigInteger.valueOf(n));
        }

        return sum.divide(BigInteger.valueOf(numbers.size()));
    }
    
    private static Long percentile(List<Long> numbers, int percentile) {
        List<Long> sortedNumbers = new ArrayList<>(numbers);
        Collections.sort(sortedNumbers);
        int index = (int) Math.ceil(percentile / 100.0 * sortedNumbers.size());
        return sortedNumbers.get(index-1);
    }
}
