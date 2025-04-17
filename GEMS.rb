require 'os'

def my_os 
  if OS.windows?
    :windows
  elsif OS.linux?
    :linux
  elsif OS.mac?
    :mac
  else
    :unknown
  end
end

puts "Meu PC possui #{OS.cpu_count}"
puts "Meu sistema é de #{OS.bits} bits"
puts "Meu sistema é #{my_os}"
