#write your code here
def add(operand_1,operand_2)
    operand_1 + operand_2
end
def subtract(operand_1,operand_2)
    operand_1 - operand_2
end
def sum(operands)
    sum = 0
    operands.each{|number| sum = sum + number}
    sum
end
def multiply(*operands)
    product = 1
    operands.size.times do |i|
        product = product * operands[i]
    end
    product
end
def power(base,exponent)
    number = 1
    exponent.times do
        number = number * base
    end
    number
end
def factorial(number)
    if(number == 0 or number == 1)
        1
    else
        number*factorial(number-1)
    end
end
