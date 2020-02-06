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

    it "should return multiple lower limits when each frequency is below the lower limit" do
      expect(subject.update_frequency([20, 30], 40, 80)).to eq [40, 40]
    end

    it "should return the upper the limit when the frequency is above the upper limit" do
      expect(subject.update_frequency([90], 40, 80)).to eq [80]
    end

    it "two above limit to equal multiple upper limits" do
      expect(subject.update_frequency([90, 100], 40, 80)).to eq [80, 80]
    end

    it "one above and one below should return each of the limits" do
      expect(subject.update_frequency([20, 100], 40, 80)).to eq [40, 80]
    end

    it "should return a variety of limits for above and below frequencies" do
      expect(subject.update_frequency([100, 20, 50, 10, 70, 110], 40, 80)).to eq [80, 40, 50, 40, 70, 80]
    end
  end
end
