require 'slack-notifier'

notifier = Slack::Notifier.new "https://hooks.slack.com/services/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" do
  defaults channel: "#testbotslackchannel", username: "FournyJuniorBot"
end

notifier.ping "Je veux du sale mamene ! alexandre"


# => will message "Hello default"
# => to the "#default" channel as 'notifier'

