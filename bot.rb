require 'rubygems'
require 'jabber/bot'
bot=Jabber::Bot.new(
    :jabber_id => 'tobrukna@jabber.org',
    :password => 'riffraff',
    :master => 'ankurgel@gmail.com',
    :presence => :chat,
    :status => "Imma bot!",
    :is_public => true
)

bot.add_command(
    :syntax=>"time",
    :description => 'Shows the current timestamp',
    :is_public=>true,
    :regex=>/^time$/
) do Time.now.to_s; end
=begin
bot.add_command(
    :syntax=> "reverse <string>",
    :description=> 'Reverses teh string',
    :is_public=>true,
    :regex=> /^reverse\s.*$/
) do |from,msg|
        msg.reverse
    end
=end
bot.add_command(
  :syntax => 'reverse <string>',
  :description => 'Reverses and returns the given string',
  :is_public => true,
  :regex => /^reverse\s.*$/
) do |from, msg|
  msg.reverse
end



    bot.connect
