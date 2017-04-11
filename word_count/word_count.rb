module WordCount
  class App
    def initialize(input_string: nil)
      @input_string = input_string
    end

    def run
      @input_string.
        downcase.
        gsub(/[^0-9a-z]/i, ' ').
        split(' ').
        group_by{ |word| word }.
        map{ |word, word_array| [word, word_array.count] }.to_h
    end
  end
end
