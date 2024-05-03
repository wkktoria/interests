<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Compound Interest Calculator</title>
</head>
<body>

<h1>Compound Interest Calculator</h1>

<p>${errorMessage}</p>

<form action="${pageContext.request.contextPath}/" method="post">
    <label for="principal-amount">Principal Amount:</label>
    <input id="principal-amount" type="number" name="principalAmount" value="${principalAmount}"/>

    <label for="interest-rate">Interest Rate:</label>
    <input id="interest-rate" type="number" min="0" max="100" step=".01" name="interestRate" value="${interestRate}"/>

    <label for="years"># of Years:</label>
    <input id="years" type="number" min="1" name="years" value="${years}"/>

    <label for="compounding-period">Times per Year:</label>
    <input id="compounding-period" type="range" min="1" max="12" step="1" name="compoundingPeriod"
           value="${compoundingPeriod}"
           oninput="this.nextElementSibling.value = this.value"/>
    <output>${compoundingPeriod}</output>

    <button type="submit">Calculate</button>
</form>

<p>Result: ${compoundInterest}</p>
</body>
</html>