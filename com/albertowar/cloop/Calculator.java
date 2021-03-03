package com.albertowar.cloop;

public class Calculator {
    private final int[] numbers;
    
    public Calculator(int[] numbers) {
        this.numbers = numbers;
	}

	public int sum() {
        int sum = 0;

        for (int i = 0; i < this.numbers.length; ++i) {
            sum += this.numbers[i];
        }

        return sum;
    }
}