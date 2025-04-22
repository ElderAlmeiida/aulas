#1
def foo(name)
    name = name.capitalize 
    -> {puts "Hello #{name}"}
end
my_lambda = foo('elder')
my_lambda.call

