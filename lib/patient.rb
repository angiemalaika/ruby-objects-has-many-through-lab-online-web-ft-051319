class Patient 
  @@all = []
  attr_accessor :name 
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
  def new_appointment(doctor,date)
    a = Appointment.new(self,doctor,date)
  end 
  
  def appointments
    Appointments.all.select do |a|
      a.patient == self 
    end 
  end 
end 