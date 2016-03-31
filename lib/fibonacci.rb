class Fibonacci
  def initialize(number)
    @number = number.to_i
  end

  def generate_sequence
    if @number.zero?
      'No sequence'
    else
      proceed_sequence
    end
  end

  private

  def current_number(sequence, a, b)
    a + b
  end

  def proceed_sequence
    sequence = [0, 1]
    (@number - sequence.count).times do |i|
      sequence << current_number(sequence,
                                 sequence[sequence.count-1],
                                 sequence[sequence.count-2])
    end
    sequence.join(', ')
  end
end
