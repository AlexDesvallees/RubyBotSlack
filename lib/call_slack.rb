require 'slack-notifier'

notifier = Slack::Notifier.new "https://hooks.slack.com/services/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" do
  defaults channel: "#testbotslackchannel", username: "FournyJuniorBot"
end

def reponse()
  notifier.ping "test bot"
end



# => will message "Hello default"
# => to the "#default" channel as 'notifier'

