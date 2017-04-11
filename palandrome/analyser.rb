module Palandrome
  class Analyser
    def initialize(input_string:)
      @input_string = input_string
      @process_string = input_string.downcase.gsub(/[^0-9a-z]/i, '')
    end

    def run
      analyse_palandrome
    end

    private

    def analyse_palandrome
      if count.odd?
        check_for_palandrome(length: count)
      else
        check_for_palandrome(length: count)
      end
    end

    def check_for_palandrome(length: )
      p (0..(length/2)).to_a
      _palandrome = true
      (0..(length/2)).each do |index|
      p index
        _palandrome = (@process_string[index] == @process_string[count-index])
        break unless _palandrome
      end
      _palandrome
    end

    def count
      @count ||= @process_string.length - 1
    end
  end
end
