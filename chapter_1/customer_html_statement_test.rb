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
    assert_equal(@customer.html_statement, expected_statement_message(@the_hulk.title, 1.5, 1.5, 1))
  end

  def test_children_rental_with_discount
    @customer.add_rental(Rental.new(@the_hulk, 4))
    assert_equal(@customer.html_statement, expected_statement_message(@the_hulk.title, 3.0, 3.0, 1))
  end

  def test_basic_new_release_rental
    @customer.add_rental(Rental.new(@iron_man, 1))
    assert_equal(@customer.html_statement, expected_statement_message(@iron_man.title, 3, 3, 1))
  end

  def test_new_release_rental_no_discount_but_with_bonus
    @customer.add_rental(Rental.new(@iron_man, 4))
    assert_equal(@customer.html_statement, expected_statement_message(@iron_man.title, 12, 12, 2))
  end

  def test_basic_regular_rental
    @customer.add_rental(Rental.new(@spider_man, 2))
    assert_equal(@customer.html_statement, expected_statement_message(@spider_man.title, 2, 2, 1))
  end

  def test_discounted_regular_rental
    @customer.add_rental(Rental.new(@spider_man, 4))
    assert_equal(@customer.html_statement, expected_statement_message(@spider_man.title, 5.0, 5.0, 1))
  end

  def test_several_rentals
    @customer.add_rental(Rental.new(@the_hulk, 1))
    @customer.add_rental(Rental.new(@iron_man, 2))
    @customer.add_rental(Rental.new(@spider_man, 3))
    puts "----------"
    puts @customer.html_statement
    assert_equal(@customer.html_statement, expected_statement)
  end

  private

  def expected_statement_message(rental, price, total, renter_points)
    message = "<h1>Rentals for <em>#{@customer.name}</em></h1><p>\n\t"
    message += rental + ': ' + price.to_s + "<br>\n"
    message += "<p>You owe <em>#{total}</em><p>\n"
    message += 'On this rental you earned ' \
    "<em>#{renter_points}</em> " \
    'frequent renter points<p>'
    message
  end

  def expected_statement
    message = "<h1>Rentals for <em>Fred</em></h1><p>\n"
    message += "\t" + @the_hulk.title + ": " + '1.5' + "<br>\n"
    message += "\t" + @iron_man.title + ": " + '6' + "<br>\n"
    message += "\t" + @spider_man.title + ": " + '3.5' + "<br>\n"
    message += "<p>You owe <em>11.0</em><p>\n"
    message += "On this rental you earned " +
    "<em>4</em> " +
    "frequent renter points<p>"
    message
  end
end
