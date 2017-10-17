class Loan
  def initialize(book)
    @book = book
    @time = Loan.time_class.now
  end

  def self.time_class
    @time_class || Time
  end

  def to_s
    "#{@book.upcase} loaned on #{@time}"
  end
end

class FakeTime
  def self.now;
    'Mon Apr 06 12:15:50';
  end
end

require 'test/unit'
class TestLoan < Test::Unit::TestCase
  def test_conversion_to_string
    Loan.instance_eval { @time_class = FakeTime }
    loan = Loan.new('War and Peace')
    assert_equal 'WAR AND PEACE loaned on Mon Apr 06 12:15:50', loan.to_s
  end
end


class Book
	def title
		puts "您使用了title方法"
	end
	def subtitle
		puts "您使用了subtitle方法"
    end
	def lend_to(user)
		puts "Lending to #{user}"
    end
	def self.deprecate(old_method, new_method)
		define_method(old_method) do | *args, &block|
          warn "Warning: #{old_method}() is deprecated. Use #{new_method}()."
          send(new_method, *args, &block)       
		end
	end
    deprecate :GetTitle, :title
    deprecate :LEND_TO_USER, :lend_to
    deprecate :title2, :subtitle
end
