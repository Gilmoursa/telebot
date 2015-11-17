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
  end
end