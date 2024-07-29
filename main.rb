require 'date'

def calculate_day_of_week(year,month,day)
    date = Date.new(year,month,day)
    day_of_week = date.wday
    day_names =  %W(日 月 火 水 木 金 土)
    day_name = day_names[day_of_week]
    
    return day_name
end

print "年月日をYYYY-MM-DD形式で入力してください"

input = gets.chomp
year,month,day = input.split('-').map(&:to_i)
result =calculate_day_of_week(year,month,day)


puts "#{year}年#{month}月#{day}日は#{result}曜日です。"
