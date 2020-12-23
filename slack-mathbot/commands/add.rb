require_relative '../extract_input'

module SlackMathbot
  module Commands
    class Add < SlackRubyBot::Commands::Base
      command 'add' 
      
      def self.call(client, data, match)
        input = match[:expression] if match.names.include?('expression')
        result = Methods.extract_input(input)
        regx = /\A[-+]?\d+\z/
        if result.length != 3 || result[1] != '+' || regx.match(result[0]) == nil || regx.match(result[2]) == nil
           client.say(channel: data.channel, text: 
          "Sorry, I didn't understand that. I only add numbers in this format. eg: 5+6 or 6+3")
        else 
          result = result[0].to_i + result[2].to_i
          result = result.to_s if result
          client.say(channel: data.channel, text:  result)
        end
      rescue StandardError => e
        client.say(channel: data.channel, text: "Sorry, #{e.message}.")
      end
    end
  end
end


        