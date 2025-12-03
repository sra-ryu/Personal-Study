package com.example.api_test.dto;

import lombok.Getter;

@Getter
public class CalcResult {
    private int add;
    private int minus;
    private int multiply;

    public CalcResult(int num1, int num2) {
        this.add = num1 + num2;
        this.minus = num1 - num2;
        this.multiply = num1 * num2;
    }
}
