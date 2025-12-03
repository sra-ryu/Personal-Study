package com.example.api_test.controller;

import com.example.api_test.dto.CalcRequest;
import com.example.api_test.dto.CalcResponse;
import com.example.api_test.dto.CalcResult;
import org.springframework.web.bind.annotation.*;

@RestController
public class CalcController {

   /*
   * todo: calculate 2 numbers
   *
   * HTTP Method:     GET
   * HTTP Path:       /api/v1/calc
   * Query Parameter: num1, num2
   * return:          result of add, minus, multiply
   *
   * */
    @GetMapping("/api/v1/calc")
    public CalcResult getCalcResult(@RequestParam int num1, @RequestParam int num2) {
        return new CalcResult(num1, num2);
    }

    /*
     * todo: post sum of numbers
     *
     * HTTP Method :    POST
     * HTTP Path   :    /api/v1/calc
     * Request Body:    JSON(numbers, list)
     * return:          int(sum of numbers)
     *
     * */
    @PostMapping("/api/v1/calc")
    public CalcResponse sendSum(@RequestBody CalcRequest request) {
        return new CalcResponse(
                request.getNumbers()
        );
    }

}
