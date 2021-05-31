module NumberMap
  def self.foo
    file = File.open("./spec/fixtures/sample.txt")
    file_data = file.readlines.map(&:chomp)
    # file_data[4]
    file_data.each_with_index do |foo, index|
      puts (index + 1) % 4
      # puts foo.length
    end
  end
end
