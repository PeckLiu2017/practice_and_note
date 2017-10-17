# 读入用户输入
# user_input = "User input: #{gets()}"
# puts user_input.tainted?

# 设置安全级别
$SAFE = 1
user_input = "User input: #{gets()}"
eval user_input
