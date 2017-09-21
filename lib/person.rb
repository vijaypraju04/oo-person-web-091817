require "pry"

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(level)
    if level > 10
      @happiness = 10
    elsif level < 0
      @happiness = 0
    else
      @happiness = level
    end
  end

  def hygiene=(level)
    if level > 10
      @hygiene = 10
    elsif level < 0
      @hygiene = 0
    else
      @hygiene = level
    end
  end

  def clean?
    hygiene > 7 ? true : false
  end

  def happy?
    happiness > 7 ? true : false
  end

  def get_paid(salary_amount)
    @bank_account += salary_amount
    "all about the benjamins"
  end

  def take_bath
    # hygiene += 4
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

def work_out
  self.hygiene -= 3
  self.happiness += 2
  return "♪ another one bites the dust ♫"
end

def call_friend(friend)
  self.happiness += 3
  friend.happiness += 3
  return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(friend, topic)
  if topic == "politics"
    friend.happiness -= 2
    self.happiness -= 2
    "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    friend.happiness += 1
    self.happiness += 1
    "blah blah sun blah rain"
  else
    "blah blah blah blah blah"
  end
end
end
