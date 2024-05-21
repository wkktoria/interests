package io.github.wkktoria.interests.servlets;

import io.github.wkktoria.interests.utils.Util;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class InterestCalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println(getServletContext());
        getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String principalAmount = req.getParameter("principalAmount");
        String interestRate = req.getParameter("interestRate");
        String years = req.getParameter("years");
        String compoundingPeriod = req.getParameter("compoundingPeriod");

        String errorMessage;

        if (principalAmount.isBlank() || interestRate.isBlank() || years.isBlank() || compoundingPeriod.isBlank()) {
            errorMessage = "One or more of the input boxes are empty.";
            req.setAttribute("errorMessage", errorMessage);
        } else {
            double compoundInterest = Util.calculateCompoundInterest(Double.parseDouble(principalAmount),
                    Double.parseDouble(interestRate) / 100, Integer.parseInt(years),
                    Integer.parseInt(compoundingPeriod));
            req.setAttribute("compoundInterest", compoundInterest);
        }

        req.setAttribute("principalAmount", principalAmount);
        req.setAttribute("interestRate", interestRate);
        req.setAttribute("years", years);
        req.setAttribute("compoundingPeriod", compoundingPeriod);

        getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}
