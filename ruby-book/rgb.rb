def to_hex(r,g,b)
	# hex = '#'
	# [r,g,b].each do |n|
	# 	hex += n.to_s(16).rjust(2,'0')
	# end
	#これと同じなんやで

	[r,g,b].inject('#'){ |hex, n|
		hex+n.to_s(16).rjust(2, '0')
	}
end

def to_ints(hex)
	hex.scan(/\w\w/).map(&:hex)
end

