class Echo < CampfireBot::Plugin
  on_command 'say', :say
  on_command 'echo', :say
  on_message /has entered the room/, :welcome

  def initialize
    @log = Logging.logger["CampfireBot::Plugin::Echo"]
  end
  
  def say(m)
    m.speak(m[:message])
  end

  def welcome(m)
    m.speak "Hey #{m[:person]}, welcome back!"
  end
end