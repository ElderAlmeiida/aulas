#Lambdas sao similares aos blocks mas podem ser salvas em variaveis para serem reutilizadas 
frist_lambda = lambda {puts "my frist lambda"}
frist_lambda.call
frist_lambda.call
frist_lambda.call

# -> =  labmda   

frist_lambda = -> (names) { names.each {|name|puts name}}
names = ["Elder","Gustavo","Lucas "]
frist_lambda.call(names)


# caso receba multiplas linhas so é utilizavel lambda 
my_lambda = lambda do |numbers|
index = 0 
puts'Numero atual + Proximo numero'
numbers.each do |number|
    return if numbers[index] == numbers.last
    puts "(#{numbers[index]})+ (#{numbers[index+1]})"
    puts numbers[index] + numbers[index+1]
    index += 1
end 
end 

numbers = [1,2,3,4,5,20,33,41,59,102]
my_lambda.call(numbers)

#Lambda can be pass as argument to method 

def foo(frist_lambda,second_lambda)
    frist_lambda.call
    second_lambda.call
end
frist_lambda = -> {puts "my frist lambda"}
second_lambda = -> {puts "my second lambda"}

foo(frist_lambda,second_lambda)
# Lambda can be return from method