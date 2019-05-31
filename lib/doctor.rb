class Doctor 
  
  @@all = []
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
  end
  
  def appointments
    
   Appointment.all.select do |song| 
      song.artist == self 
  end 
end 