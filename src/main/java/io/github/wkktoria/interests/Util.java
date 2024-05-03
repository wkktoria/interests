package io.github.wkktoria.interests;

class Util {
    static double calculateCompoundInterest(double principalAmount, double interestRate, int years, int compoundingPeriod) {
        return Math.round(principalAmount * Math.pow((1 + (interestRate / years)), compoundingPeriod * years));
    }
}
