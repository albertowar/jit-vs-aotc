package com.albertowar.iterator;


public class Calculator {
    private final int[] numbers;
    
    public Calculator(int[] numbers) {
        this.numbers = numbers;
	}

	public int sum() {
        int sum = 0;

        for (int i : this.numbers) {
            sum += i;
        }

        return sum;
    }
}