    # def traverse(path)
    #   if File.directory?(path)  # 如果是目录
    #     dir = Dir.open(path)
    #     puts "111"
    #     while name = dir.read
    #       next if name == "."   # ※
    #       next if name == ".."  # ※
    #       traverse(path + "/" + name)
    #     end
    #     dir.close
    #   else
    #     process_file(path)      # 处理文件
    #   end
    # end

    def traverse(path)
      Dir.glob(["#{path}/**/*", "#{path}/**/.*"]).each do |name|
        unless File.directory?(name)
          process_file(name)
        end
      end
    end
    

    def process_file(path)
      puts path                 # 输出结果
    end

    traverse(ARGV[0])
