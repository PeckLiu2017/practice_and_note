# 判断是平年还是闰年，首先要看所有的年数集合，题目出得很有迷惑性，但除了平年就是闰年。
# 如果rb文件内容变动，在irb环境下，require的返回值是false。
# def is_leap_year?(year)
#   if year % 4 == 0
#     if year % 100 == 0
#       if year % 400 == 0
#         return true
#       else
#         return false
#       end
#     else
#       return true
#     end
#   else
#     return false
#   end
#
#   # 同学们可能会发现这不是正确的版本，让我们继续做下去
#
# end

def is_leap_year?(y)
  y % 400 == 0 || ( y % 4 == 0 && y % 100 != 0)
end
