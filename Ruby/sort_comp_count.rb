# ary = %w(Ruby is a open  source programming language with a focus on simplicity and productivity It has an elegant syntax that is natural to read and easy to write)
# lang = %w(Ruby Perl Python Scheme Pike REBOL)
# call_num = 0    # 块的调用次数
#
# # 采用下面这种方法ary的赋值要写在里面
# # def sorted
# #   ary.sort do |a, b|
# #     call_num += 1 # 累加块的调用次数
# #     a.length <=> b.length
# #   end
# # end
# #这种写法自动执行方法
# sorted = ary.sort do |a, b|
#   call_num += 1 # 累加块的调用次数
#   a.length <=> b.length
# end

ary = %w(
      Ruby is a open source programming language with a focus
      on simplicity and productivity. It has an elegant syntax
      that is natural to read and easy to write
)
call_num = 0
sorted = ary.sort_by{ |item|
  call_num += 1
  item.length }
# p sorted


puts "排序结果 #{sorted}"
puts "数组的元素数量 #{ary.length}"
puts "调用块的次数 #{call_num}"
