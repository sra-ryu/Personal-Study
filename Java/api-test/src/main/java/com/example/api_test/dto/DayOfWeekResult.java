package com.example.api_test.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.format.TextStyle;
import java.util.Locale;

@Getter
public class DayOfWeekResult {
    @JsonProperty("dayOfWeek")
    private final String day;

    public DayOfWeekResult(String dateString) {
        LocalDate date = LocalDate.parse(dateString);
        DayOfWeek day = date.getDayOfWeek();
        this.day = day.getDisplayName(TextStyle.SHORT, Locale.ENGLISH).toUpperCase();
    }
}
