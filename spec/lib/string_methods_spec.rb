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

describe "#reverse_array" do 
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