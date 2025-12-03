package com.example.api_test.dto;

import lombok.Getter;

import java.util.List;

@Getter
public class CalcResponse {
    private int sum;

    public CalcResponse(List<Integer> numbers) {
        int sum = 0;
        for (int num : numbers) {
            sum += num;
        }
        this.sum = sum;
    }
}
