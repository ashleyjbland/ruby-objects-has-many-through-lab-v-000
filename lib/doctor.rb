class Doctor
  attr_accessor :name
  @@all = []

  def initalize(name)
    @name = name
    @@all << self
  end

  def self
    @@all
  end

end

The Doctor class needs a class variable @@all that begins as an empty array.
The Doctor class needs a class method .all that lists each doctor in the class variable.
A doctor should be initialized with a name and be saved in the @@all array.

The Doctor class needs an instance method, new_appointment, that takes in a an instance of the Patient class and a date,
and creates a new appointment. That appointment should know that it belongs to the doctor

The Doctor class needs an instance method, appointments, that iterates through all appointments
and finds those belonging to this doctor.

The Doctor class needs an instance method, patients, that iterates over that doctor's appointments
and collects the patient that belongs to each appointment.
