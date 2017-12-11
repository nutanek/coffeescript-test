this.submit = () ->
    num = getNum()
    opr = getOperator()
    cal num, opr 
    alert opr


getNum = (id1, id2) ->
    num1 = parseFloat document.getElementById('num1').value
    num2 = parseFloat document.getElementById('num2').value
    [num1, num2]

getOperator = () ->
    opr = document.getElementById 'operator'
    opr.value

cal = (num, opr) ->
    result = add num[0], num[1] if opr is '+'
    alert result
    
add = (num1, num2) -> num1 + num2

    
