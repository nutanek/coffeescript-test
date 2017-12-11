this.submit = () ->
    num = getNum 'num1', 'num2'
    alert num[0]


getNum = (id1, id2) ->
    num1 = document.getElementById id1
    num2 = document.getElementById id2
    [num1.value, num2.value]

# getOperator = () ->
#     num1 = document.getElementById 'num1'