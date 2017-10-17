class MyClass
  def testing_self
    @var = 10         # self的一个实例变量
    my_method()       # 跟self.my_method()相同
    self
  end

  def my_method
     @var = @var + 1
  end
end

# class MyClass
#   def testing_self
#     self
#   end
# end
#
# class MyClass
#   def testing_self
#   end
# end
