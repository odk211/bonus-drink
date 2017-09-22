require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  context 'to_s' do
    it { expect(Triangle.new(2, 2, 2).to_s).to eq '正三角形ですね！' }
    it { expect(Triangle.new(1, 2, 2).to_s).to eq '二等辺三角形ですね！' }
    it { expect(Triangle.new(1, 2, 2.9).to_s).to eq '不等辺三角形ですね！' }
    it { expect(Triangle.new(0, 0, 0).to_s).to eq '三角形じゃないです＞＜' }
  end
  context 'triangle?' do
    it { expect(Triangle.new(0, 0, 0).triangle?).to be_false }
    it { expect(Triangle.new(1, 2, 3).triangle?).to be_false }
    it { expect(Triangle.new(1, 2, 2.9).triangle?).to be_true }
    it { expect(Triangle.new(2.9, 2, 1).triangle?).to be_true }
  end
  context 'isosceles_triangle?' do
    it { expect(Triangle.new(1, 2, 2.1).isosceles_triangle?).to be_false }
    it { expect(Triangle.new(1, 2, 2).isosceles_triangle?).to be_true }
    it { expect(Triangle.new(2, 2, 3).isosceles_triangle?).to be_true }
  end
  context 'equilateral_triangle?' do
    it { expect(Triangle.new(1, 2, 2).equilateral_triangle?).to be_false }
    it { expect(Triangle.new(2, 2, 2).equilateral_triangle?).to be_true }
  end
end
