require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  it { expect(BonusDrink.total_count_for(0)).to eq 0 }
  it { expect(BonusDrink.total_count_for(1)).to eq 1 }
  it { expect(BonusDrink.total_count_for(3)).to eq 4 }
  it { expect(BonusDrink.total_count_for(11)).to eq 16 }
  it { expect(BonusDrink.total_count_for(100)).to eq 149 }
  it { expect { BonusDrink.total_count_for(-1) }.to raise_error ArgumentError }
end
