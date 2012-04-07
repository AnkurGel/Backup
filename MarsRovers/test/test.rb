require 'lib/code'
require 'test/unit'
class TestMars < MiniTest::Unit::TestCase
  def test_assertions
    ['N','E','W','S'].each do |position|  #Asserted all geographical position.
      (1..10).each do |xpos|              #Asserted numericality of x-coordiante 
        (1..10).each do |ypos|            #Asserted numericality of y-coordiante
          sequence="#{xpos} #{ypos} #{position}"
          assert_equal(sequence, Bot.new(sequence).to_s)
        end
      end
    end
  end

  def test_errors
    for i in ('A'..'Z')
      unless i=~/[NEWS]/           #Making sure that position raises ArgumentError when position doesn't matches either of N/E/W/S
        assert_raises(ArgumentError){Bot.new("1 2 #{i}")}
       else
        assert_equal(i, Bot.new("1 2 #{i}").p)
      end
    assert_raises(ArgumentError){Bot.new("#{i} 2 N")}
    assert_raises(ArgumentError){Bot.new("1 #{i} N")}
    assert_raises(ArgumentError){Bot.new("#{i} #{i} N")}
    end
  end
end
