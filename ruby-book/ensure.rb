# class WordSynth
# 	def initialize
# 		@effects = []
# 	end

# 	def add_effect(effect)
# 		@effects << effect
# 	end

# 	def play(original_words) do |words, effect|
# 		effect.call(word)
# 	end
# end


def greeting_ja(&block)
	texts = ["おはよう", "こんにちわ", "こんばんわ"]

	greeting_common(texts, &block)
end

def greeting_en(&block)
	texts = ["good morning", "hello", "good evening"]
	greeting_common(texts, &block)
end

def greeting_common(texts, &block)
	puts texts[0]
	puts block.call(texts[1])
	puts texts[2]
end


greeting_ja do |text|
	text*2
end


greeting_en do |text|
	text.upcase
end