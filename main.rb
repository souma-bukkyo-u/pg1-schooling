
def run_by_1min
  loop do
    now = Time.now
    if weekday?(now) && ontime?(now)
      puts "平日16:55です！"  
    end
    sleep 60
  end
end

def weekday?(time)
  # timeが平日かどうかを検知する
  time.wday >= 1 && time.wday <= 5
end
  
def ontime?(time)
  # 16:55かどうかの検知
  time.hour == 16 && time.min == 55
end
  
# テストプログラム
require 'time'
time = Time.new(2024,7,29, 16, 17, 0)
puts weekday?(time) == true
puts ontime?(time) == false
time = Time.new(2024,7,28, 16, 55, 0)
puts weekday?(time) == false
puts ontime?(time) == true

run_by_1min
