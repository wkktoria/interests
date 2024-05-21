package io.github.wkktoria.interests.utils;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class UtilTest {
    @Test
    void calculateCompoundInterest() {
        // given
        double principalAmount = 500;
        double interestRate = 0.235;
        int years = 10;
        int compoundingPeriod = 6;

        // when
        double result = Util.calculateCompoundInterest(principalAmount, interestRate, years, compoundingPeriod);

        // then
        assertEquals(2015, result);
    }
}