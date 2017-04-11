module Palandrome
  class FileParser

    attr_accessor :file_name

    def initialize(file_name: )
      @file_name = file_name
    end

    def input_strings
      return [] unless file_exists?
      parse_file
    end

    private

    def file_exists?
      return false unless file_name
      File.file?(file_name)
    end

    def parse_file
      text = File.open(file_name).read
      return [] unless text
      input_strings = []
      IO.foreach(file_name) do |line|
        input_strings << line.strip
      end
      input_strings
    end
  end
end
