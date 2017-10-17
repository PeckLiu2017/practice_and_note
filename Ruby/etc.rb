require 'etc'
　
st = File.stat("/Users/peckliu/practice")
puts st
pw = Etc.getpwuid(st.uid)
p pw.name    #=> "root"
gr = Etc.getgrgid(st.gid)
p gr.name    #=> "wheel"
