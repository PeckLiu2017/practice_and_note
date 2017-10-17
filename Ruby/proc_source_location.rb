prc0 = proc{nil}
prc1 = proc{|a| a}

p prc0.source_location
p prc1.source_location
