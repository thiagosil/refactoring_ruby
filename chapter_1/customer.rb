require_relative 'movie'
class Customer
  attr_reader :name

  def initialize(name)
    @name = name
    @rentals = []
  end

  def add_rental(arg)
    @rentals << arg
  end

  def statement
    total_amount, frequent_renter_points = 0, 0
    result = "Rental Record for #{@name}\n"
    @rentals.each do |rental|
      this_amount = rental.charge

      # add frequent renter points
      frequent_renter_points += 1
      # add bonus for a two day new release rental
      if rental.movie.price_code == Movie::NEW_RELEASE && rental.days_rented > 1
        frequent_renter_points += 1
      end
      # show figures for this rental
      result += "\t" + rental.movie.title + "\t" + this_amount.to_s + "\n"
      total_amount += this_amount
    end
    result += "Amount owed is #{total_amount}\n"
    result += "You earned #{frequent_renter_points} frequent renter points"
    result
  end
end
