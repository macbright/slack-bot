module SlackMathbot
  module Commands
    class Add < SlackRubyBot::Commands::Base
      command 'add' do |client, data, _match|
        client.say(channel: data.channel, text: '4')
      end
    end
  end
end