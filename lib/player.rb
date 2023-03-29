class Player
  attr_reader
  def initialize(name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost
    @contract_length = contract_length
  end

  def first_name
    name_s = @name.split(" ")
    name_s.first
  end

  def last_name
    name_s = @name.split(" ")
    name_s.last
  end
end