class Player
  attr_reader :monthly_cost, :contract_length, :nickname
  def initialize(name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost
    @contract_length = contract_length
    @nickname = nil
  end

  def first_name
    name_s = @name.split(" ")
    name_s.first
  end

  def last_name
    name_s = @name.split(" ")
    name_s.last
  end

  def total_cost
    contract_length * monthly_cost
  end

  def set_nickname!(nick)
    @nickname = nick
  end
end