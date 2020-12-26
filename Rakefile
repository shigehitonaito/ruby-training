


# namespace :my_tasks do
# 	desc "テスト用のタスク"

# 	task :hello_world do
# 		puts "Hello world!"
# 	end
# end

require "rake/testtask"

Rake::TestTask.new do |t|
	t.pattern = "test/**/*_test.rb"
end

task default: :test