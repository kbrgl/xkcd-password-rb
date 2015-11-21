# generates xkcd-inspired passwords
class XkcdPasswordGenerator
  attr_accessor :word_list
  def initialize(word_list)
    @word_list = word_list
  end

  def generate(words: 4, separator: ' ')
    if separator
      (1..words).to_a.map! { random_word }.join(separator)
    else; (1..words).to_a.map! { random_word }
    end
  end

  def random_word
    @word_list[rand(@word_list.length)]
  end
end

def parse(file, delimiter: ',')
  # splits the contents of file at delimiter
  if File.file?(file)
    f = File.open(file, 'r')
    result = []
    f.each(delimiter) { |line| result << line.chop! }
    f.close
    return result
  else
    fail "file #{file} not found"
  end
end

if __FILE__ == $0
    word_list = parse('dictionary.csv')
    generator = XkcdPasswordGenerator.new(word_list)
    print generator.generate(separator: ' '), "\n"
end
