#class for Model2 goes here
#Feel free to change the name of the class
class Patient
    attr_reader :name
    attr_accessor :need, :budget

    @@all = []

    def initialize(name, need, budget)
        @name = name
        @need = need
        @budget = budget
        self.class.all << self
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
        end
    end

    def find_doctor
        Doctor.all.select do |doctor|
            doctor.field == self.need && doctor.cost <= self.budget
        end
    end

    def self.all
        @@all
    end

    def self.cheapest_patient
        self.all.min do |a, b|
            a.budget <=> b.budget
        end
    end

    def self.most_appointments
        self.all.max do |a, b|
            a.appointments.length <=> b.appointments.length
        end
    end

end
