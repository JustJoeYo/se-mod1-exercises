class Venue
  attr_reader :name, :capacity, :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(name)
    @patrons << name
  end

  def yell_at_patrons
    @patrons.map(&:upcase)
  end

  def over_capacity
    @patrons.length > @capacity
  end

  def kick_out
    @patrons.shift if over_capacity == true
  end
end
