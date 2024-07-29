require 'date'

def get_num(message)
    print message
  # A1. 入力して数字を返す
  # ここを実装

end

def parse_date(year, month, day)
  begin
    Date.new(year, month, day)
  rescue
    puts "errorです"
  end
end

def calc_day_of_week(date)
  day_of_week = date.wday
  # 曜日の日本語表現を取得
  day_names = %w(日 月 火 水 木 金 土)
  day_names[day_of_week]
end

year = get_num('年を入力:')
month = get_num('月を入力:')
day = get_num('日を入力:')
  
date = parse_date(year, month, day)
puts calc_day_of_week(date)