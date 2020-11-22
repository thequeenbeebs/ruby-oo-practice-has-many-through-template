#class for Model1 goes here
#Feel free to change the name of the class
class Doctor
    attr_reader :name, :field
    attr_accessor :cost

    @@all = []

    def initialize(name, field, cost)
        @name = name
        @field = field
        @cost = cost
        self.class.all << self
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    def patients
        self.appointments.select do |appointment|
            appointment.patient
        end
    end

    def self.all
        @@all
    end

    def self.most_expensive
        Doctor.all.max do |a, b|
            a.cost <=> b.cost
        end
    end

    def self.most_popular
        Doctor.all.max do |a, b|
            a.patients.length <=> b.patients.length
        end
    end

end
