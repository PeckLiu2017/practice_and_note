class CleanRoom
  lambda {
  	setups = []
  	events = {}
  	Kernel.send :define_method, :event do |name, &block|
  		events[name] = block
  	end

  	Kernel.send :define_method, :setup do |&block|
  		setups << block
  	end

  	Kernel.send :define_method, :each_event do |&block|
  		events.each_pair do |name, event|
  			block.call name, event
  		end
  	end

  	Kernel.send :define_method, :each_setup do |&block|
  		setups.each do |setup|
  			block.call setup
  		end
  	end
  }.call
end
