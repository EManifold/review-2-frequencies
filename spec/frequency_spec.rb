require 'frequency'

describe Frequency do
  describe '#update' do
    it "should return a frequency of 60 when the limits are 40 and 80" do
      expect(subject.update_frequency([60], 40, 80)).to eq [60]
    end

    it "should return a frequency of 120 when the limits are 100 and 150" do
      expect(subject.update_frequency([120], 100, 150)).to eq [120]
    end

    it "should return each frequency when they're both within the limits" do
      expect(subject.update_frequency([50, 60], 40, 80)).to eq [50, 60]
    end

    it "should return the limit closest to the frequency when the frequency is not within the limits" do
      expect(subject.update_frequency([20], 40, 80)).to eq [40]
    end
  end
end
