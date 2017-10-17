def book_discount(*args) #传入所有购买书籍
  uni_book = [] #这是不重复书籍构成的数组
  dup_book = [] #这是重复书籍构成的数组

  args.each do |book|
    if uni_book.include?(book)
      dup_book << book #从所有购买书籍中找到重复书籍
    else
      uni_book << book #从所有购买书籍中找到不重复书籍
    end
  end

  q = uni_book.size # 购书总量

  if q == 0 # 购书总量为零，返回false
    return false
  elsif q == 1 # 购书总量为一，返回100
    price = 1*100
  elsif q == 2 # 购书总量大于一，返回不重复书籍的数量乘以折扣率 + 重复书籍的数量乘以原价
    price = uni_book.size*100*(1-0.05) + dup_book.size*100
  elsif q == 3 # 购书总量大于一，返回不重复书籍的数量乘以折扣率 + 重复书籍的数量乘以原价
    price = uni_book.size*100*(1-0.1) + dup_book.size*100
  elsif q == 4 # 购书总量大于一，返回不重复书籍的数量乘以折扣率 + 重复书籍的数量乘以原价
    price = uni_book.size*100*(1-0.2) + dup_book.size*100
  elsif q == 5 # 购书总量大于一，返回不重复书籍的数量乘以折扣率 + 重复书籍的数量乘以原价
    price = uni_book.size*100*(1-0.25) + dup_book.size*100
  end
  return price.to_i # 程序最后返回价格
end
