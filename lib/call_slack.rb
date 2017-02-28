require 'slack-notifier'
require 'sinatra'

notifier = Slack::Notifier.new "https://hooks.slack.com/services/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" do
  defaults channel: "#testbotslackchannel", username: "FournyJuniorBot"
end

notifier.ping "test suite install dualboot"


# => will message "Hello default"
# => to the "#default" channel as 'notifier'

