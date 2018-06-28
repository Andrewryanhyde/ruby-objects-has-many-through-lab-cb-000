class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    patient = Appointment.new(date, self, patient)
  end

  def appointments
    Appointment.all.select do |appointments|
      Appointment.doctor == self
    end
  end

  def patients
    appointment.all.select do |appointments|
      appointments.patient
    end
  end

end
