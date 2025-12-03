package com.example.api_test.controller;

import com.example.api_test.dto.DayOfWeekResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DayController {

    /*
     * todo: get day of the date
     *
     * HTTP Method:     GET
     * HTTP Path:       /api/v1/day-of-the-week
     * Query Parameter: date = yyyy-mm-dd
     * return:          day(요일)
     *
     * */
    @GetMapping("/api/v1/day-of-the-week")
    public DayOfWeekResult getDayOfWeek(@RequestParam String date) {
        return new DayOfWeekResult(date);
    }
}
