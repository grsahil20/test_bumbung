require_relative './analyser'

module Palandrome
  class App
    def initialize(input_strings: [])
      @input_strings = input_strings
    end

    def run
      _strings = {palandrome: [], non_palandrome: []}
      @input_strings.each do |input_string|
        if is_palandrome?(input_string)
          _strings[:palandrome] << input_string
        else
          _strings[:non_palandrome] << input_string
        end
      end
      _strings
    end

    private

    def is_palandrome?(input_string)
      Palandrome::Analyser.new(input_string: input_string).run
    end
  end
end
