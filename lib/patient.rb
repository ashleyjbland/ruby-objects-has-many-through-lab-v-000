class Patient
  attr_reader :name
  @@all = []

  def initalize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    Appointment.all.collect do |appointment|
      appointment.doctor
    end
  end

end

The Patient class needs an instance method, doctors, that iterates over that patient's appointments
and collects the doctor that belongs to each appointment.
