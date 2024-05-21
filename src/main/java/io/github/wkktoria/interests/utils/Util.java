package io.github.wkktoria.interests.utils;

public class Util {
    public static double calculateCompoundInterest(double principalAmount, double interestRate, int years, int compoundingPeriod) {
        return Math.round(principalAmount * Math.pow((1 + (interestRate / years)), compoundingPeriod * years));
    }
}
