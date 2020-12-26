def currency_of(country)
	case country
	when :japan
		"yen"
	when :us
		"dollar"
	when :india
		"rupee"
	else
		raise ArgumentError.new("無効な国名です。 #{country}")
	end

end

puts currency_of(:italy )