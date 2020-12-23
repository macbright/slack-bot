require 'spec_helper'

describe SlackMathbot::Commands::Help do
  def app
    SlackMathbot::Bot.instance
  end

  subject { app }

  it 'returns 4' do
    expect(message: "#{SlackRubyBot.config.user} help", channel: 'channel').to respond_with_slack_message('See https://github.com/macbright/slack-bot, please.')
  end
  
end