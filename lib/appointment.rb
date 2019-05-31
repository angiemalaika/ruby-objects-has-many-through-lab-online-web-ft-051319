class Appointment 
  @@all = []
  attr_accessor :name,:patient,:doctor,:date 
  
  def initialize(date,patient,doctor)
    @name = name 
    @date = date 
    @patient = patient 
    @doctor = doctor 
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
end 