(1..100).each do |target|
#sur:surplus
	sur = target % 15

	case sur
	when 0
	  puts "fizz_buzz"
	when 5 , 10
	  puts "buzz"
	when 3 , 6 , 9 , 12
	  puts "fizz"
	else
	  puts target
	end
end
