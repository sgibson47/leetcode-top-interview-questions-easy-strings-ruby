require 'spec_helper'
require '/Users/samanthagibson/Development/code/leetcode-top-interview-questions-easy-strings-ruby/lib/string_methods.rb'

describe "#reverse" do 
  describe "Example 1" do
    it "returns reversed string" do 
      string = ["h","e","l","l","o"]
      expect(reverse(string)).to eq(["o","l","l","e","h"])
    end
  end
  describe "Example 2" do
    it "returns reversed string" do 
      string = ["H","a","n","n","a","h"]
      expect(reverse(string)).to eq(["h","a","n","n","a","H"])
    end
  end
end