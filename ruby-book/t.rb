require "date"


def convert_heisei_to_date(heisei_text)
	m = heisei_text.match(/平成(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
	year = m[:jp_year].to_i + 1988
	month = m[:month].to_i
	day = m[:day].to_i
	# begin
	# 	Date.new(year, month, day)
	# rescue
	# 	nil
	# end

	if Date.valid_date?(year, month, day)
		Date.new(year, month,day)
	end
end

p convert_heisei_to_date("平成10年3月30日")
p convert_heisei_to_date("平成90年77月77日")