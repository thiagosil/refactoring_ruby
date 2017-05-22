require_relative 'regular_price'
require_relative 'new_release_price'
require_relative 'childrens_price'

class Movie
  REGULAR = 0
  NEW_RELEASE = 1
  CHILDREN = 2

  attr_reader :title, :price_code

  def initialize(title, the_price_code)
    @title, self.price_code = title, the_price_code
  end

  def price_code=(value)
    @price_code = value
    @price = case price_code
      when REGULAR then RegularPrice.new
      when NEW_RELEASE then NewReleasePrice.new
      when CHILDREN then ChildrensPrice.new
    end
  end

  def charge(days_rented)
    @price.charge(days_rented)
  end

  def frequent_renter_points(days_rented)
    @price.frequent_renter_points(days_rented)
  end
end
