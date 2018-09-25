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

  def new_appointment(date)
    Patient.new(date, self)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    Apppointment.all.collect do |appointment|
      appointment.patient
    end
  end

end


The Doctor class needs an instance method, patients, that iterates over that doctor's appointments
and collects the patient that belongs to each appointment.
