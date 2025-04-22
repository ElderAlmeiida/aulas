5.times{puts"Hello wolrd!"}

# This is a simple Ruby script that demonstrates the use of blocks.
# It defines a method that takes a block and yields to it,
# and also shows how to use a block with a loop.
count = 0
5.times do 
    count +=1
    puts "exec block #{count}"
end


#blocos tambem pode receber parametros 
sum = 0 
numbers= [5,10,5]
numbers.each{|number| sum += number}
puts sum

foo= {2 => 3,4 => 5}
foo.each do |key, value|
    puts "key = #{key}"
    puts "value = #{value}"
    puts "key * value = #{key * value}"
    puts '---'
end

# Method that takes a block
 def foo 
    # Call the block 
    yield
    yield
 end
 foo {puts "Hello from the block!"}   
 
 # block can be passed  optionally
 def foo 
    if block_given? 
        # Call the block
        yield
    else 
        puts "No block given"
    end
 end   
 foo 
 foo {puts "Hello from the block!"}
# block can be passed  optionally    


def foo (name,&block)
    @name= name 
    block.call
end 
foo('Elder') { puts "helloww #{@name}"}

#bloco can fill many lines as paramenter 
def foo (numbers,&block)
    if block_given?
        numbers.each do |key,value|
            block.call(key,value)
        end 
    end
end
numbers={2 =>2 ,3=>3,4=>4}

foo(numbers) do |key,value|
    puts "#{key}*{value} = #{key*value}"
    puts "#{key}+{value} = #{key+value}"
    puts "---"
end