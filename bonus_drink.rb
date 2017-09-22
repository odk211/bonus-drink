class BonusDrink
  def self.total_count_for(amount)
    raise ArgumentError.new('amount should be 0 or a positive value') if amount.negative?
    return 0 if amount.zero?
    amount + (amount - 1)/2
  end
end
