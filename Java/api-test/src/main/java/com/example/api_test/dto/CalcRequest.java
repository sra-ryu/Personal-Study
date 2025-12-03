package com.example.api_test.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.List;

@Getter
@NoArgsConstructor
public class CalcRequest {
    private List<Integer> numbers;
}
