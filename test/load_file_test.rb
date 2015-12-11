require 'minitest'
require 'minitest/autorun'
require_relative '../lib/swift-sifter'

class SwiftSifterTest < Minitest::Test

  def test_can_readlines_from_one_line_file
    sifter = SwiftSifter.new("test/lyrics_test.txt")
    expected = "'Cause baby I could build a castle"
    assert_equal expected, sifter.lyrics
  end

  def test_can_parse_lyrics
    sifter = SwiftSifter.new("test/lyrics_sift_test.txt")
    expected = "Can he tell that I can't breathe"
    assert_equal expected, sifter.lyrics
  end

  def test_can_do_lyric_stuff
    sifter = SwiftSifter.new("test/lyrics_sift_test.txt")
    expected = 7
    assert_equal expected, sifter.do_lyric_stuff
  end

end
