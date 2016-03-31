require './lib/fibonacci'
require 'rspec'

RSpec.describe Fibonacci do
  it "returns correct sequence of '7'" do
    fibonacci = Fibonacci.new(7)
    expect(fibonacci.generate_sequence).to eq('0, 1, 1, 2, 3, 5, 8')
  end

  it "returns 'No sequence'" do
    fibonacci = Fibonacci.new('asdas')
    expect(fibonacci.generate_sequence).to eq('No sequence')
  end
end
