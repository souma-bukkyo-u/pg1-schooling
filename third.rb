require 'date'

begin
    date = Date.parse(ARGV[0])
    puts date
rescue ArgumentError
    puts "error:無効な日付です"
end