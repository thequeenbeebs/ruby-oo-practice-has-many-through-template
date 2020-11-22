require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

matko = Doctor.new("Matko", "oncology", 500)
phoebe = Doctor.new("Phoebe", "hematology", 200)
kanan = Doctor.new("Kanan", "psychiatry", 300)
carleen = Doctor.new("Carleen", "therapy", 175)
burt = Doctor.new("Burt", "GP", 100)

blaire = Patient.new("Blaire", "oncology", 600)
jonathan = Patient.new("Jonathan", "therapy", 100)
cheryl = Patient.new("Cheryl", "GP", 200)
jack = Patient.new("Jack", "vet", 1)
patty = Patient.new("Patty", "dentist", 200)

app1 = Appointment.new(blaire, matko, "November 25")
app2 = Appointment.new(blaire, phoebe, "November 25")
app3 = Appointment.new(jack, carleen, "December 2")
app4 = Appointment.new(jonathan, kanan, "December 3")
app5 = Appointment.new(cheryl, burt, "December 4")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
