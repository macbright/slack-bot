require 'spec_helper'

describe SlackMathbot::Commands::Add do
  def app
    SlackMathbot::Bot.instance
  end

  subject { app }

  it 'adding two numbers 4+2' do
    expect(message: "#{SlackRubyBot.config.user} add  4+2", channel: 'channel').to respond_with_slack_message('6')
  end
  it 'adds two numbers 20+20' do
    expect(message: "#{SlackRubyBot.config.user} add  20+20", channel: 'channel').to respond_with_slack_message('40')
  end
  it 'adding more than two numbers' do
    expect(message: "#{SlackRubyBot.config.user} add 2+2+2", channel: 'channel').to respond_with_slack_message("Sorry, I didn't understand that. I only add numbers in this format. eg: 5+6 or 6+3")
  end
  it 'adding many numbers' do
    expect(message: "#{SlackRubyBot.config.user} add 2+2+2+20+20+20", channel: 'channel').to respond_with_slack_message("Sorry, I didn't understand that. I only add numbers in this format. eg: 5+6 or 6+3")
  end
  it 'using different operator more than two numbers' do
    expect(message: "#{SlackRubyBot.config.user} add 2-4", channel: 'channel').to respond_with_slack_message("Sorry, I didn't understand that. I only add numbers in this format. eg: 5+6 or 6+3")
  end
  it 'adding with two signs' do
    expect(message: "#{SlackRubyBot.config.user} add 2+-3", channel: 'channel').to respond_with_slack_message("Sorry, I didn't understand that. I only add numbers in this format. eg: 5+6 or 6+3")
  end
end