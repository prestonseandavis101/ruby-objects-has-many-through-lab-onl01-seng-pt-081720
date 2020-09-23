require 'pry'

class Patient
  
  attr_accessor :name, :appointment, :doctor
  @@all = []
  
  def initialize(name)
    @name=name
    @@all << self
  end
  
  def self.all
    @@all
end

def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end

  def new_appointment(date, doctor)
    binding.pry
    Appointment.new(self, date, doctor)
end

end
