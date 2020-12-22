require 'minitest/autorun'
require '../ruby-book/convert_hash_syntax'


class ConvertHashStntaxTest < Minitest::Test
	def test_convert_hash_syntax
		old_syntax = <<~TEXT
		{
			:name => 'Alice',
			:age => 20,
			:gender => :female
		}
		TEXT
		expected_syntax = <<~TEXT
		{
			name: 'Alice',
			age: 20,
			gender: :female
		}
		TEXT
		assert_equal expected_syntax, convert_hash_syntax(old_syntax)
	end
end