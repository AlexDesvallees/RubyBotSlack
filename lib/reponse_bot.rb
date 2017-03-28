require 'slack-notifier'

class Reponse_bot

  notifier = Slack::Notifier.new "https://hooks.slack.com/services/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" do
    defaults channel: "#testbotslackchannel", username: "FournyJuniorBot"

    def initialize
    end

  end

  def reponse
    # notifier.ping "test bot"
    puts "I do some script"
    return "I can do anything that you want"
  end

  def executeScript
    "script in transcation..."
  end

  def commit
    exec 'cd /home/fourny/Documents/SlackBot'
    return "I'm in #{exec 'pwd'}"
  end
end
