class Doctor
  attr_accessor :name, :date, :patient
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Patient.new(date, patient, self)
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
