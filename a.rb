
def center(array)
    array = sort_array(array)
    if detect_odd?(array)
      center_in_odd(array)
    else
      center_in_even(array)
    end
  end
    
  # 配列のソート
  def sort_array(array)
    array.sort
  end
  
  # 奇数かどうか
  def detect_odd?(array)
    ( array.size / 2 ) * 2 != array.size
  end
    
  # 偶数の場合の中央値(要素数0はnil)
  def center_in_even(array)
    return nil if array.size == 0
    index = array.size / 2
    c2 = [array[index], array[index-1]]
    c2.sum / c2.size.to_f
  end
    
  # 奇数の場合の中央値(要素数0はnil)
  def center_in_odd(array)
    return nil if array.size == 0
    index = array.size / 2
    array[index]
  end


num_list = [1,5,3,4,2]
puts center(num_list) == 3
num_list = [4,1,2,3]
puts center(num_list) == 2.5
num_list = []
puts center(num_list) == nil