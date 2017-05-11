require 'test/unit'
require_relative 'movie'
require_relative 'rental'
require_relative 'customer'

class CustomerTest < Test::Unit::TestCase
  def setup
    @the_hulk = Movie.new('The Hulk', Movie::CHILDREN)
    @iron_man = Movie.new('Iron Man 4', Movie::NEW_RELEASE)
    @spider_man = Movie.new('Spiderman', Movie::REGULAR)
    @customer = Customer.new('Fred')
  end

  def test_basic_children_rental
    @customer.add_rental(Rental.new(@the_hulk, 2))
    assert_equal(@customer.statement, expected_statement_message(@the_hulk.title, 1.5, 1.5, 1))
  end

  def test_children_rental_with_discount
    @customer.add_rental(Rental.new(@the_hulk, 4))
    assert_equal(@customer.statement, expected_statement_message(@the_hulk.title, 3.0, 3.0, 1))
  end

  def test_basic_new_release_rental
    @customer.add_rental(Rental.new(@iron_man, 1))
    assert_equal(@customer.statement, expected_statement_message(@iron_man.title, 3, 3, 1))
  end

  def test_new_release_rental_no_discount_but_with_bonus
    @customer.add_rental(Rental.new(@iron_man, 4))
    assert_equal(@customer.statement, expected_statement_message(@iron_man.title, 12, 12, 2))
  end

  def test_basic_regular_rental
    @customer.add_rental(Rental.new(@spider_man, 2))
    assert_equal(@customer.statement, expected_statement_message(@spider_man.title, 2, 2, 1))
  end

  def test_discounted_regular_rental
    @customer.add_rental(Rental.new(@spider_man, 4))
    assert_equal(@customer.statement, expected_statement_message(@spider_man.title, 5.0, 5.0, 1))
  end

  def test_several_rentals
    @customer.add_rental(Rental.new(@the_hulk, 1))
    @customer.add_rental(Rental.new(@iron_man, 2))
    @customer.add_rental(Rental.new(@spider_man, 3))
    expected_statement = "Rental Record for Fred\n\tThe Hulk\t1.5\n\tIron Man 4\t6\n\tSpiderman\t3.5\nAmount owed is 11.0\nYou earned 4 frequent renter points"
    assert_equal(@customer.statement, expected_statement)
  end

  private

  def expected_statement_message(rental, price, total, renter_points)
    "Rental Record for #{@customer.name}\n\t" + rental + "\t" + price.to_s + "\nAmount owed is #{total}\nYou earned #{renter_points} frequent renter points"
  end
end
