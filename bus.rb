class Bus

  attr_reader 

def initialize(rout_number, destionation)
  @rout_number = rout_number
  @destionation = destionation
  @passangers = []
end

def drive_noise
  return "Brum brum"
end

def how_many_pass
  return @passangers.count
end

def pick_up(person)
  @passangers << person
end

def pick_off(person)
  @passangers.pop
end

def empty_bus
  @passangers.clear
  return @passangers.count
end
  
end