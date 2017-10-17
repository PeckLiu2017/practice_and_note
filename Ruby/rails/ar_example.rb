require 'activerecord' #failed
# ActiveRecord::Base
#require '/Users/peckliu/.rvm/gems/ruby-2.3.1/gems/activerecord-5.0.4'
ActiveRecord::Base.establish_connection :adapter =>
"sqlite3",                              :database=>
"dbfile"
