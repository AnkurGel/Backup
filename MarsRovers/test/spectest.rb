require_relative '../lib/code'
describe Bot, 'must' do

  it "be in NEWS" do
    ['N','E','W','S'].each do |geo_point|
      Bot.new("1 3 #{geo_point}").p.should match(/[NEWS]/)
    end
  end

  it "have numerical coordinates" do
    (1..10).each{|xc| (1..10).each{|yc| Bot.new("#{xc} #{yc} N").to_s.should eql("#{xc} #{yc} N")}}
  end

  it "throw argument error for geographical HEAD" do
    for i in ('A'..'Z')
      unless i=~/[NEWS]/
        expect {Bot.new("1 2 #{i}")}.to raise_error(ArgumentError)
      else
        Bot.new("1 2 #{i}").p.should == i
      end
    end
  end
end
