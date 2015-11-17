
module SlackMathbot
  module Commands
    class Calculate < SlackRubyBot::Commands::Base
      command 'calculate' do |client, data, _match|
        send_message client, data.channel, "Client: #{client}, Data: #{data}, _match: #{_match}"
      end
    end
    class Telephone < SlackRubyBot::Commands::Base
    	 command 'telephone' do |client, data, _match|
        send_message client, data.channel, Giphy.random(data.text).image_url.to_s
      end
    end
    class Telephone < SlackRubyBot::Commands::Base
    	 command 'hi' do |client, data, _match|
        send_message client, data.channel, "Hi <@#{data.user}>!"
      end
    end
    class Telephone < SlackRubyBot::Commands::Base
    	 command 'hi' do |client, data, _match|
        send_message client, data.channel, "Hi <@#{data.user}>, type weather and the city like so 'weather London' "
      end
    end
    class Telephone < SlackRubyBot::Commands::Base
    	 command 'weather' do |client, data, _match|
        weather = "http://openweathermap.org/find?q=#{data.text[8..-1]}"
        send_message client, data.channel, "Here's the weather where you are #{weather}"
      end
    end
  end
end