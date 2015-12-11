require 'pry'

class SwiftSifter

  attr_reader :lyrics

  def initialize(disc)
    @file = File.new(disc, 'r')
    @lyrics = @file.read.chomp
    clean_words_or_die
  end

  def clean_words_or_die
    @lyrics = lyrics.gsub(/\n/, " ")
    @lyrics = lyrics.gsub(/[\"\.\?\:\,]/, "")
  end

  def do_lyric_stuff
     @lyrics.downcase.split.uniq.count
  end

end
