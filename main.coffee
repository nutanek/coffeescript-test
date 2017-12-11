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

showResult = (text) ->
    node = document.createElement 'li'
    textnode = document.createTextNode text
    node.appendChild textnode
    document.getElementById('history').appendChild node
    return

cal = (num, opr) ->
    if opr is '+'
        result = add num[0], num[1]
    else if opr is '-'
        result = minus num[0], num[1]
    else if opr is '*'
        result = multiply num[0], num[1]
    showResult [num[0], opr, num[1], '=', result].join ' '
    alert result
    
add = (num1, num2) -> num1 + num2

minus = (num1, num2) -> num1 - num2

multiply = (num1, num2) -> num1 * num2



    
