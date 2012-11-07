class Echo < CampfireBot::Plugin
  on_command 'say', :say
  on_command 'echo', :say

  def initialize
    @log = Logging.logger["CampfireBot::Plugin::Echo"]
  end
  
  def say(m)
    m.speak(m[:message])
  end
end