require 'components/hero'
require 'functions/display'
require 'functions/scripts'

Functions::Display.clear_display
puts Functions::Scripts.welcome
print "あなたの名前は何ですか？："
name = gets
hero = Components::Hero.new(name: name)
loop do
  Functions::Display.clear_display
  puts "名前:#{hero.name}"
  puts "行動を選択してください"
	response = gets
	case response
	when /^[yY]/
		puts "you say yes!"
	when /^[nN]/, /^$/
		puts "you say no!"
		break
	end
end
puts "see you"
