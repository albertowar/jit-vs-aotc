package com.albertowar.functional;

import java.util.Arrays;

public class Calculator {
    private final int[] numbers;
    
    public Calculator(int[] numbers) {
        this.numbers = numbers;
	}

	public int sum() {
        return Arrays.stream(this.numbers).sum();
    }
}