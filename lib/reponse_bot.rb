class Reponse_bot

  def initialize
    notifier = Slack::Notifier.new "https://hooks.slack.com/services/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" do
      defaults channel: "#testbotslackchannel", username: "FournyJuniorBot"
    end

  end

  def reponse
    #notifier.ping "Je veux du sale mamene ! alexandre"
    "coucou"
  end

end