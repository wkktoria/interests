<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Compound Interest Calculator</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-stone-100">
<div class="flex flex-col items-center justify-center h-screen mx-auto">
    <h1 class="text-xl text-slate-800 font-bold mb-8">Compound Interest Calculator</h1>
    <form class="bg-white border shadow-md rounded px-8 pt-6 pb-8 mb-4" action="${pageContext.request.contextPath}/"
          method="post">
        <div class="flex flex-col items-center justify-center">
            <p class="text-red-500 font-semibold text-sm rounded my-4">${errorMessage}</p>
            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="principal-amount">Principal
                    Amount</label>
                <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                       id="principal-amount" name="principalAmount" type="number" placeholder="Principal amount"
                       value="${principalAmount}">
            </div>
            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="interest-rate">Interest Rate</label>
                <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                       id="interest-rate" name="interestRate" type="number" min="0" max="100" step=".01"
                       placeholder="Interest rate" value="${interestRate}">
            </div>
            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="years"># of Years</label>
                <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                       id="years" name="years" type="number" min="1" placeholder="Years"
                       value="${years}">
            </div>
            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="compounding-period">Times per
                    Year</label>
                <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                       id="compounding-period" name="compoundingPeriod" type="number" min="1" max="12" step="1"
                       placeholder="Times per year"
                       value="${compoundingPeriod}">
            </div>
            <button class="mx-auto my-4 bg-sky-400 hover:bg-sky-500 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
                    type="submit">Calculate
            </button>
        </div>
    </form>
    <p class="text-lg bg-green-400 text-neutral-900 font-semibold rounded-md p-3 mt-2">
        Result: ${compoundInterest}</p>
</div>
</body>
</html>