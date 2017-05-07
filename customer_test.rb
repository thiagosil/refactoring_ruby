require 'test/unit'
require_relative 'movie'
require_relative 'rental'
require_relative 'customer'

class CustomerTest < Test::Unit::TestCase
  def setup
  end

  # def teardown
  # end

  def test_fail
    the_hulk = Movie.new('The Hulk', Movie::CHILDREN)
    iron_man = Movie.new('Iron Man 4', Movie::NEW_RELEASE)
    spider_man = Movie.new('Spiderman', Movie::REGULAR)
    
    customer = Customer.new('Fred')
    customer.add_rental(Rental.new(the_hulk, 2))
    assert_equal(customer.statement, 4)
  end
end
