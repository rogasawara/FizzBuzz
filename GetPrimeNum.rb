puts 1
(2..100).each do |num|
	(2..num-1).each do |cand|
		case num % cand
		when 0
			puts num
			break
		else
			if(cand == num-1)
				puts "prime number"
			end
		end
	end
end
