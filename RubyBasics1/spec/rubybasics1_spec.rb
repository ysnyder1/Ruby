require 'rubybasics1.rb'

RSpec.configure do |config|
  config.filter_run_excluding :disabled => true
end

describe 'Ruby Basics 1 Part I' do

  describe "#sum" do
    it "should be defined" do
      expect { sum([1,3,4]) }.not_to raise_error
    end

    it "returns correct sum [20 points]" , points: 20 do
      expect(sum([1,2,3,4,5])).to be_a_kind_of Fixnum
      expect(sum([1,2,3,4,5])).to eq(15)
      expect(sum([1,2,3,4,-5])).to eq(5)
      expect(sum([1,2,3,4,-5,5,-100])).to eq(-90)
    end

    it "works on the empty array [10 points]" , points: 10 do
      expect { sum([]) }.not_to raise_error
      expect(sum([])).to be_zero
    end
  end
end

describe 'Ruby Basics 1 Part II' do
  describe "#max_2_sum" do
    it "should be defined" do
      expect { max_2_sum([1,2,3]) }.not_to raise_error
    end
    it "returns the correct sum [7 points]" , points: 7 do
      expect(max_2_sum([1,2,3,4,5])).to be_a_kind_of Fixnum
      expect(max_2_sum([1,-2,-3,-4,-5])).to eq(-1)
    end
    it 'works even if 2 largest values are the same [3 points]' , points: 3 do
      expect(max_2_sum([1,2,3,3])).to eq(6)
    end
    it "returns zero if array is empty [10 points]" , points: 10 do
      expect(max_2_sum([])).to be_zero
    end
    it "returns value of the element if just one element [10 points]" , points: 10 do
      expect(max_2_sum([3])).to eq(3)
    end
  end
end

describe 'Ruby Basics 1 Part III' do     #collection
  describe "#sum_to_n" do
    it "should be defined" do                #test or example
      expect { sum_to_n?([1,2,3],4) }.not_to raise_error
    end
    it "returns true when any two elements sum to the second argument [30 points]" , points: 30 do
      expect(sum_to_n?([1,2,3,4,5], 5)).to be true        # 2 + 3 = 5
      expect(sum_to_n?([3,0,5], 5)).to be true            # 0 + 5 = 5
      expect(sum_to_n?([-1,-2,3,4,5,-8], -3)).to be true  # handles negative sum
      expect(sum_to_n?([-1,-2,3,4,5,-8], 12)).to be false # 3 + 4 + 5 = 12 (not 3 elements)
      expect(sum_to_n?([-1,-2,3,4,6,-8], 12)).to be false # no two elements that sum
    end

    it "returns false for any single element array [5 points]" , points: 5 do
      expect(sum_to_n?([0], 0)).to be false
      expect(sum_to_n?([1], 1)).to be false
      expect(sum_to_n?([-1], -1)).to be false
      expect(sum_to_n?([-3], 0)).to be false
    end
    it "returns false for an empty array [5 points]" , points: 5 do
      expect(sum_to_n?([], 0)).to be false
      expect(sum_to_n?([], 7)).to be false
    end
  end
end