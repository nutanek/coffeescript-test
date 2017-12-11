this.submit = () ->
    num = getNum()
    opr = getOperator()
    cal num[0], num[1], opr 
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

cal = (num1, num2, opr) ->
    if opr is '+'
        result = add num1, num2
    else if opr is '-'
        result = minus num1, num2
    else if opr is '*'
        result = multiply num1, num2
    else if opr is '/'
        if num2 is 0
            return alert 'cannot divided by 0'
        result = devide num1, num2
    else if opr is '%'
        if num2 is 0
            return alert 'cannot mod by 0'
        result = mod num1, num2
    else if opr is '^'
        result = power num1, num2
    showResult [num1, opr, num2, '=', result].join ' '
    alert result

# operation
add = (num1, num2) -> num1 + num2
minus = (num1, num2) -> num1 - num2
multiply = (num1, num2) -> num1 * num2
devide = (num1, num2) -> num1 / num2
mod = (num1, num2) -> num1 % num2
power = (num1, num2) -> Math.pow num1, num2





    
