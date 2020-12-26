add_proc = Proc.new {|a, b| a.to_i + b.to_i}
puts add_proc.lambda?
puts add_proc.class

add_lambda = ->(a,b){ a.to_i + b.to_i }
puts add_lambda.lambda?
puts add_proc.class