# synth = WordSynth.new
# synth.play("Ruby is fun!")

# synth = WordSynth.new
# synth.add_effect(Effects.reverse)
# synth.play("Ruby is fun!")

# synth = WordSynth.new
# synth.add_effect(Effects.echo(2))
# synth.add_effect(Effects.loud(3))
# synth.add_effect(Effects.reverse)
# synth.play("Ruby is fun!")


class WordSynth
	def initialize
		@effects = []
	end

	def add_effects(effect)
		@effects << effect
	end

	def play(original_words)
		@effects.inject(original_words) do |words, effect|
			effect.call(words)
		end
	end
end

module Effects
	def self.reverse
		->(words) do
			worfs.split(" ").map(&:reverse).join(" ")
		end
	end
end