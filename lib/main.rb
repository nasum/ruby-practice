require 'components/hero'
require 'components/events/'
require 'functions/display'
require 'functions/scripts'

Functions::Display.clear_display
puts Functions::Scripts.welcome
print "あなたの名前は何ですか？："
name = gets
hero = Components::Hero.new(name: name)

loop do
  Functions::Display.clear_display
  puts "名前　:#{hero.name}"
  puts "ライフ:#{hero.life}"
  puts "空腹度:#{hero.satiety}"
  puts "行動を選択してください"
  puts "(1)探索(2)作成(3)休息(4)終了"
	response = gets.to_i
	case response
	when 1
		puts "探索しています"
    hero.hunger 2
	when 2
		puts "作成しています"
    hero.hunger 1
  when 3
    puts "休息しています"
    hero.heal 1
    hero.hunger 1
  when 4
		break
	end
end

puts "see you"
