require 'spec_helper'
require '/Users/samanthagibson/Development/code/leetcode-top-interview-questions-easy-strings-ruby/lib/string_methods.rb'

describe "#reverse_array" do 
  describe "Example 1" do
    it "returns reversed string" do 
      string = ["h","e","l","l","o"]
      expect(reverse_array(string)).to eq(["o","l","l","e","h"])
    end
  end
  describe "Example 2" do
    it "returns reversed string" do 
      string = ["H","a","n","n","a","h"]
      expect(reverse_array(string)).to eq(["h","a","n","n","a","H"])
    end
  end
end

describe "#reverse" do 
  describe "Example 1" do
    it "returns reversed string" do 
      string = "hello"
      expect(reverse(string)).to eq("olleh")
    end
  end
  describe "Example 2" do
    it "returns reversed string" do 
      string = "Hannah"
      expect(reverse(string)).to eq("hannaH")
    end
  end
end

describe "#reverse_integer" do 
  describe "Example 1" do
    it "returns reversed integer" do 
      num = 123
      expect(reverse_integer(num)).to eq(321)
    end
  end

  describe "Example 2" do
    it "returns reversed integer" do 
      num = -123
      expect(reverse_integer(num)).to eq(-321)
    end
  end

  describe "Example 3" do
    it "returns reversed integer" do 
      num = 120
      expect(reverse_integer(num)).to eq(21)
    end
  end

  describe "Example 4" do
    it "returns reversed integer" do 
      num = 1534236469
      expect(reverse_integer(num)).to eq(0)
    end
  end

  describe "Example 5" do
    it "returns reversed integer" do 
      num = -2147483648
      expect(reverse_integer(num)).to eq(0)
    end
  end

end

describe "#first_uniq_char" do 
  describe "Example 1" do
    it "returns the index of the first non-repeating character" do 
      s = "leetcode"
      expect(first_uniq_char(s)).to eq(0)
    end
  end

  describe "Example 2" do
    it "returns the index of the first non-repeating character" do 
      s = "loveleetcode"
      expect(first_uniq_char(s)).to eq(2)
    end
  end

  describe "Example 3" do
    it "returns the index of the first non-repeating character" do 
      s = "aaaaaaaaa"
      expect(first_uniq_char(s)).to eq(-1)
    end
  end
end