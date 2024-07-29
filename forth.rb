require 'date'

begin
    date = Date.parse(ARGV[0])
    puts "入力された日付の曜日は:#{date.strftime('%A')}"
rescue ArgumentError
    puts "error:無効な日付です"
end