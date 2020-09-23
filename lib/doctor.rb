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
  
  def new_appointment(date, patient)
    #binding.pry
    Appointment.new(date, patient, self)
  end
  
end