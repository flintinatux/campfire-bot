class Echo < CampfireBot::Plugin
  on_command 'say', :say
  on_command 'echo', :say
  on_message %r[hea(d|ded|ding|din') out], :goodbye

  def initialize
    @log = Logging.logger["CampfireBot::Plugin::Echo"]
  end
  
  def say(m)
    m.speak(m[:message])
  end

  def goodbye(m)
    name = m[:person].split.first
    farewells = [
                  "Peace.",
                  "Cya later, #{name}.",
                  "See you tomorrow, #{name}!",
                  "Goodbye, #{name}.",
                  "Don't worry, #{name}. I'll be here when you get back!",
                  "Drive fast and turn hard."
                ]
    m.speak farewells.sample
  end
end