puts "数字を入力してください："
input = gets.chomp

if input.match?(/\A-?\d+\Z/)
    puts "入力された数字は: #{input}"
else
    puts "error"
end