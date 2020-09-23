require 'pry'
class Doctor
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name=name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  
  def patients
   appointments.map do |appointment| 
     appointment.patient
     #binding.pry
 end

end
  
  def new_appointment(patient, date)
    binding.pry
    Appointment.new(patient, date, self)
  end
  
end