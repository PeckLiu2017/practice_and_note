# def event(name,&block)
#   puts "1"
#   @events[name] = block
#   #puts "ALERT: #{name}" if yield
# end
#
# def setup(&block)
#   puts "2"
#   @setups << block
# end
#
# Dir.glob('*events.rb').each do |file|
#   puts "3"
#      @setups = []
#      @events = {}
#      puts "4"
#      load file
#      puts "5"
#      @events.each_pair do |name, event|
#        puts "6"
#        env = Object.new
#        puts "7"
#        @setups.each do |setup|
#          puts "8"
#         env.instance_eval &setup
#          puts "9"
#        end
#          puts "10"
#        puts "ALERT: #{name}" if env.instance_eval &event
#        puts "11"
#      end
# end

# 消灭全局变量
  load('clean_room.rb')
#  load('clean_room.rb',true) #=>ERROR

    Dir.glob('*events.rb').each do |file|
  	load file
  	each_event do |name, event|
  		env = CleanRoom.new
  		each_setup do |setup|
  			env.instance_eval &setup
  		end
  		puts "ALERT: #{name}" if env.instance_eval &event
  	end
  end

=begin
3
4
5
3
4
1
1
2
2
5
6
7
8
Setting up sky
9
8
Setting up mountains
9
10
ALERT: the sky is falling
11
6
7
8
Setting up sky
9
8
Setting up mountains
9
10
ALERT: it's getting closer
11
=end
