#class for Model3 goes here
#Feel free to change the name of the class
class Appointment
    attr_accessor :patient, :doctor, :date

    @@all = []

    def initialize(patient, doctor, date)
        @patient = patient
        @doctor = doctor
        @date = date
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.daily_schedule(date)
        self.all.select do |appointment|
            appointment.date == date
        end
    end
  
end
