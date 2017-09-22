require File.expand_path(File.dirname(__FILE__) + '/../eratos')

describe Eratos do
  it { expect(Eratos.prime_numbers(0)).to eq [] }
  it { expect(Eratos.prime_numbers(1)).to eq [] }
  it { expect(Eratos.prime_numbers(2)).to eq [2] }
  it { expect(Eratos.prime_numbers(3)).to eq [2, 3] }
  it { expect(Eratos.prime_numbers(4)).to eq [2, 3] }
  it { expect(Eratos.prime_numbers(30)).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29] }
  it { expect(Eratos.prime_numbers(120)).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113] }
end
