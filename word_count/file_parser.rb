module WordCount
  class FileParser

    attr_accessor :file_name

    def initialize(file_name: )
      @file_name = file_name
    end

    def input_string
      return nil unless file_exists?
      file_text
    end

    private

    def file_exists?
      return false unless file_name
      File.file?(file_name)
    end

    def file_text
      File.open(file_name).read
    end
  end
end
