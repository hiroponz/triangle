class BonusDrink
  def self.total_count_for(amount)
    amount + present_count_for(amount)
  end

  def self.present_count_for(amount)
    if amount == 0
      0
    else
      ((amount + 1)/2).floor - 1
    end
  end
end
