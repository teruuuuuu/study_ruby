class RCat
  def self.toList(file)
    File.open(file, "r").map{|f| f.chomp}
  end
end

if $0 == __FILE__ then
    filePath = File.join(File.dirname(__FILE__), '../../resource/sample.csv')
    RCat.toList(filePath).each { |x| puts x }
end