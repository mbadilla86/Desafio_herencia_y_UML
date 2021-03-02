require_relative 'appointment'
class MonthlyAppointment < Appointment
  attr_reader :day
  def initialize(location, purpose, hour, min, day)
    @day = day
    super(location, purpose, hour, min)
  end

  def occurs_on?(day, month, year)
    @day == day 
  end

  def to_s
    "Reunión única en #{location} sobre #{purpose} el #{day} a la(s) #{hour}:#{min}."
  end
end
