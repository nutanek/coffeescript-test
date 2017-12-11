this.submit = () ->
    num = getNum
    alert num[0]


getNum = (id1, id2) ->
    num1 = document.getElementById 'num1'
    num2 = document.getElementById 'num2'
    [num1.value, num2.value]

getOperator = () ->
    num1 = document.getElementById 'num1'