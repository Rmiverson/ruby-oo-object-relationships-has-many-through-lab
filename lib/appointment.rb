
require 'pry'
class Appointment
   attr_reader :patient, :date, :doctor
   attr_accessor 

   @@all = []
   def initialize(date, patient = nil, doctor = nil)
      @date = date
      @doctor = doctor
      @patient = patient

      @@all << self
   end

   def self.all
      @@all
   end

   def new_app(date, peep)
      #binding.pry
      if @doctor
         doctor.new_appointment(date, peep)
      else
         patient.new_appointment(date, peep)
      end
   end
end