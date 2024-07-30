def center(arr)
    # 配列が空の場合は nil を返す
    return nil if arr.empty?
  
    # 配列をソートする
    sorted = arr.sort
    
    # 配列の長さを取得
    n = sorted.length
    
    # 配列の長さが奇数の場合
    if n.odd?
      median = sorted[n / 2]
    else
      # 配列の長さが偶数の場合
      median = (sorted[n / 2 - 1] + sorted[n / 2]) / 2.0
    end
    
    return median
  end
  
  
  num_list = [1,2,3,4,5]
  puts center(num_list) == 3 #インデックス2
  num_list = [1,2,3,4]
  puts center(num_list) == 2.5 #インデックス1+インデックス2
  num_list = []
  puts center(num_list) == nil


  